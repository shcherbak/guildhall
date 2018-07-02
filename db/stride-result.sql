-- Type: stride2.edge

-- DROP TYPE stride2.edge;

CREATE TYPE stride2.edge AS
   (child character varying,
    parent character varying,
    id bigint);
ALTER TYPE stride2.edge
  OWNER TO postgres;

-- Table: stride2.nodes

-- DROP TABLE stride2.nodes;

CREATE TABLE stride2.nodes
(
  id bigint NOT NULL DEFAULT nextval('stride2.node_id_seq'::regclass),
  node character varying,
  CONSTRAINT nodes_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride2.nodes
  OWNER TO postgres;



-- Table: stride2.deps

-- DROP TABLE stride2.deps;

CREATE TABLE stride2.deps
(
  lft bigint,
  rgt bigint,
  id bigserial NOT NULL,
  CONSTRAINT deps_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride2.deps
  OWNER TO postgres;


-- Table: stride2.routes

-- DROP TABLE stride2.routes;

CREATE TABLE stride2.routes
(
  id bigserial NOT NULL,
  route bigint[],
  CONSTRAINT routes_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride2.routes
  OWNER TO postgres;



CREATE OR REPLACE FUNCTION stride2.find_and_append_node(
    __find_node character varying,
    __append_node character varying)
  RETURNS void AS
$BODY$
DECLARE 
  _find_node_id bigint;
  _append_node_id bigint;
  _r record;
  _a bigint[];
BEGIN

  _find_node_id := nodes.id
    FROM 
      stride2.nodes
    WHERE 
      nodes.node = __find_node;

  _append_node_id := nodes.id
    FROM 
      stride2.nodes
    WHERE 
      nodes.node = __append_node;

  for _r in 
    SELECT 
      routes.id, 
      routes.route
    FROM 
      stride2.routes
    WHERE 
      routes.route[array_length(routes.route,1)] = _find_node_id limit 1 loop
      _a := array_append(_r.route, _append_node_id);
      update stride2.routes set route = _a where id = _r.id;
  end loop;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION stride2.find_and_append_node(character varying, character varying)
  OWNER TO postgres;


CREATE OR REPLACE FUNCTION stride2.get_edges_by_child(__child character varying)
  RETURNS stride2.edge[] AS
$BODY$
BEGIN
  return
    array (
      SELECT 
        (children.node, 
        parent.node, 
        deps.id)::stride2.edge
      FROM 
        stride2.nodes children, 
        stride2.deps, 
        stride2.nodes parent
      WHERE 
        children.id = deps.lft AND
        parent.id = deps.rgt AND
        children.node = __child
    );
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION stride2.get_edges_by_child(character varying)
  OWNER TO postgres;


-- Function: stride2.find_and_fork_route(character varying, integer)

-- DROP FUNCTION stride2.find_and_fork_route(character varying, integer);

CREATE OR REPLACE FUNCTION stride2.find_and_fork_route(
    __find_node character varying,
    __fork_qty integer)
  RETURNS void AS
$BODY$
DECLARE 
  _find_node_id bigint;
  _r record;
  _i int;
BEGIN

  _find_node_id := nodes.id
    FROM 
      stride2.nodes
    WHERE 
      nodes.node = __find_node;

  for _r in 
    SELECT 
      routes.id, 
      routes.route
    FROM 
      stride2.routes
    WHERE 
      routes.route[array_length(routes.route,1)] = _find_node_id loop
      for _i in 1..__fork_qty loop
      insert into stride2.routes values (DEFAULT, _r.route);
      end loop;
  end loop;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION stride2.find_and_fork_route(character varying, integer)
  OWNER TO postgres;



CREATE OR REPLACE FUNCTION stride2.get_path()
  RETURNS void AS
$BODY$
DECLARE
  _root character varying;
  _parents stride2.edge[];
  _next_parents stride2.edge[] := array[]::stride2.edge[];
  _idx int;
  _idx2 int;
  _cnt int := 1;
  _stride_fork stride2.fork[];
  _r1 record;
BEGIN

  --_root := '11.01.100-001 v1.1.0'; -- 1
  _root := '22.02.100-001 v1.1.0'; -- 5
  --_root := '23.03.100-001 v1.1.0'; -- 9
  raise notice 'ROOT: %', _root;

  _parents := stride2.get_edges_by_child(_root);
  raise notice 'before while loop _parents: %', _parents;

  while array_length(_parents, 1) > 0 loop
    raise notice 'while loop #%', _cnt;

    _next_parents := array[]::stride2.edge[];
    --_stride_fork := array[]::stride2.fork[];

    if array_length(_parents, 1) > 1 then
      for _r1 in 
        select
        child,
        sum(1) qty
        from
        unnest(_parents)
        group by child
      loop
        if _r1.qty > 1 then
          raise notice 'forking % for % times', _r1.child, (_r1.qty - 1);
          perform stride2.find_and_fork_route(_r1.child, (_r1.qty - 1)::integer);
        end if;
      end loop;
    end if;

    -- fork if needed
    --if array_length(_parents, 1) > 1 then

      --for _idx in 1..(array_length(_parents, 1) - 1) loop
        --raise notice 'forking % for % times', (_parents[_idx]).child, (array_length(_parents, 1) - 1);
        --raise notice 'forking % for % times', (_parents[_idx]).child, 1;
        --perform stride2.find_and_fork_route(((_parents[_idx]).child), (array_length(_parents, 1) - 1));
        --perform stride2.find_and_fork_route(((_parents[_idx]).child), 1);
      --end loop;

    --end if;

    for _idx in 1..array_length(_parents, 1) loop

      raise notice '_parents[%]: %', _idx, _parents[_idx];

      -- fork if needed
      --if array_length(_parents, 1) > 1 then
      -- raise notice 'forking % for % times', (_parents[_idx]).child, 1;
      --  perform stride2.find_and_fork_route(((_parents[_idx]).child), 1);
      --end if;

      -- apend
      raise notice 'appending % to %', (_parents[_idx]).parent, (_parents[_idx]).child;
      perform stride2.find_and_append_node((_parents[_idx]).child, (_parents[_idx]).parent);

      _next_parents := array_cat(_next_parents, stride2.get_edges_by_child((_parents[_idx]).parent));
      raise notice '_next_parents: %', _next_parents;

    end loop;

    _parents := _next_parents;
    _cnt := _cnt +1;

  end loop;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION stride2.get_path()
  OWNER TO postgres;





CREATE OR REPLACE FUNCTION stride2.get_path()
  RETURNS void AS
$BODY$
DECLARE
  _root character varying;
  _parents stride2.edge[];
  _next_parents stride2.edge[] := array[]::stride2.edge[];
  _idx int;
  _idx2 int;
  _cnt int := 1;
  _stride_fork stride2.fork[];
  _r1 record;
BEGIN

  --_root := '11.01.100-001 v1.1.0'; -- 1
  _root := '22.02.100-001 v1.1.0'; -- 5
  --_root := '23.03.100-001 v1.1.0'; -- 9
  raise notice 'ROOT: %', _root;

  _parents := stride2.get_edges_by_child(_root);
  raise notice 'before while loop _parents: %', _parents;

  while array_length(_parents, 1) > 0 loop
    raise notice 'while loop #%', _cnt;

    _next_parents := array[]::stride2.edge[];
    --_stride_fork := array[]::stride2.fork[];

    if array_length(_parents, 1) > 1 then
      for _r1 in 
        select
        child,
        sum(1) qty
        from
        unnest(_parents)
        group by child
      loop
        if _r1.qty > 1 then
          raise notice 'forking % for % times', _r1.child, (_r1.qty - 1);
          perform stride2.find_and_fork_route(_r1.child, (_r1.qty - 1)::integer);
        end if;
      end loop;
    end if;

    -- fork if needed
    --if array_length(_parents, 1) > 1 then

      --for _idx in 1..(array_length(_parents, 1) - 1) loop
        --raise notice 'forking % for % times', (_parents[_idx]).child, (array_length(_parents, 1) - 1);
        --raise notice 'forking % for % times', (_parents[_idx]).child, 1;
        --perform stride2.find_and_fork_route(((_parents[_idx]).child), (array_length(_parents, 1) - 1));
        --perform stride2.find_and_fork_route(((_parents[_idx]).child), 1);
      --end loop;

    --end if;

    for _idx in 1..array_length(_parents, 1) loop

      raise notice '_parents[%]: %', _idx, _parents[_idx];

      -- fork if needed
      --if array_length(_parents, 1) > 1 then
      -- raise notice 'forking % for % times', (_parents[_idx]).child, 1;
      --  perform stride2.find_and_fork_route(((_parents[_idx]).child), 1);
      --end if;

      -- apend
      raise notice 'appending % to %', (_parents[_idx]).parent, (_parents[_idx]).child;
      perform stride2.find_and_append_node((_parents[_idx]).child, (_parents[_idx]).parent);

      _next_parents := array_cat(_next_parents, stride2.get_edges_by_child((_parents[_idx]).parent));
      raise notice '_next_parents: %', _next_parents;

    end loop;

    _parents := _next_parents;
    _cnt := _cnt +1;

  end loop;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION stride2.get_path()
  OWNER TO postgres;

