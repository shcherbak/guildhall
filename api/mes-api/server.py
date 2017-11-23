#!/usr/bin/env python

import datetime
import logging
from logging.handlers import RotatingFileHandler

from flask import Flask, jsonify, request

import dao
from connection import pool
from inputs import (FsmtJsonInputs,
                    OutboundDocumentJsonInputs,
                    InboundDocumentJsonInputs,
                    GenericDocumentJsonInputs)

app = Flask(__name__)
app.config.from_object('serverconfig')
print("call to pool 1")
pool = pool()

# app.config['JSON_AS_ASCII'] = False
# app.config.from_object('config')

#Flask-UUID <uuid:doc_id>
#@app.route('/demands/<string:document_name>', methods=['GET'])
#def get_demand1(document_name):
#    return jsonify(document_name)

# ref: https://gist.github.com/ibeex/3257877
formatter = logging.Formatter(
    "[%(asctime)s] {%(pathname)s:%(lineno)d} %(levelname)s - %(message)s")
handler = RotatingFileHandler(app.config['LOG_FILENAME'],
                              maxBytes=10000000,
                              backupCount=5)
handler.setLevel(logging.DEBUG)
handler.setFormatter(formatter)
app.logger.addHandler(handler)

# Output the access logs to the same file
log = logging.getLogger('werkzeug')
log.setLevel(logging.DEBUG)
log.addHandler(handler)


def date_range_helper(request):
    req_sdate = request.args.get('sdate')
    req_edate = request.args.get('edate')
    facility = request.args.get('facility')

    if req_sdate:
        sdate = datetime.datetime.strptime(req_sdate, "%Y-%m-%d").date()
    else:
        sdate = datetime.datetime.now().date() - datetime.timedelta(days=1000)

    if req_edate:
        edate = datetime.datetime.strptime(req_edate, "%Y-%m-%d").date()
    else:
        edate = datetime.datetime.now().date() + datetime.timedelta(days=1)

    if not facility:
        facility = 'A1'

    return sdate, edate, facility

@app.errorhandler(404)
def page_not_found(e):
    return "404 not found", 404


@app.route('/')
def hello_world():
    return 'Stockpile WMS-API v1'


@app.route('/demands', methods=['GET'])
def get_demands():
    sdate, edate, facility = date_range_helper(request)
    print (sdate, edate, facility)
    return jsonify(dao.DemandList(pool, facility, sdate, edate).to_dict())


@app.route('/demands', methods=['POST'])
def post_demand():
    success = False
    document_id = None
    inputs = OutboundDocumentJsonInputs(request)
    if not inputs.validate():
        response = jsonify(success=success, errors=inputs.errors), 400
        return response
    else:
        data = request.get_json()
        document = dao.Demand(pool)
        document.from_dict(data)
        document_id = document.init()
    if document_id:
        success = True
        response = jsonify(success=success, message="document id=[{0}] created".format(document_id)), 200
    else:
        response = jsonify(success=success, errors=document.errors), 400
    return response


@app.route('/demands/<int:document_id>', methods=['GET'])
def get_demand(document_id):
    document = dao.Demand(pool, document_id)
    return jsonify(document.to_dict())


@app.route('/demands/<int:document_id>', methods=['DELETE'])
def del_demand(document_id):
    document = dao.Demand(pool)
    success = document.delete(document_id)
    if success:
        response = ('', 204)
    else:
        response = jsonify(success=False, errors=document.errors), 400

    return response


@app.route('/demands/<int:document_id>/body', methods=['PATCH'])
def patch_demand_body(document_id):
    data = request.get_json()
    if data:
        d = dao.Demand(pool)
        d.from_dict(data)
        d.reinit(document_id)
        return jsonify(str(document_id))
    else:
        return '', 400


@app.route('/demands/<int:document_id>/fsmt', methods=['PUT'])
def patch_demand_fsmt(document_id):
    success = False
    inputs = FsmtJsonInputs(request)

    if not inputs.validate():
        response = jsonify(success=False, errors=inputs.errors), 400
    else:
        data = request.get_json()
        document = dao.Demand(pool)

        if data['curr_fsmt'] == 'COMMITTED':
            success = document.commit(document_id)
            response = jsonify(success=success, message="document commited"), 200
        elif data['curr_fsmt'] == 'DECOMMITTED':
            success = document.decommit(document_id)
            response = jsonify(success=success, message="document decommited"), 200
        else:
            return jsonify(success=success, errors="incorrect fsmt"), 400

        if not success:
            response = jsonify(success=False, errors=document.errors), 400

    if not response:
        response = jsonify(success=success, message="unexpected error"), 400

    return response




@app.route('/reserves', methods=['GET'])
def get_reserves():
    sdate, edate, facility = date_range_helper(request)
    return jsonify(dao.ReserveList(pool, facility, sdate, edate).to_dict())


@app.route('/reserves', methods=['POST'])
def post_reserve():
    success = False
    document_id = None
    inputs = OutboundDocumentJsonInputs(request)
    if not inputs.validate():
        response = jsonify(success=success, errors=inputs.errors), 400
        return response
    else:
        data = request.get_json()
        document = dao.Reserve(pool)
        document.from_dict(data)
        document_id = document.init()
    if document_id:
        success = True
        response = jsonify(success=success, message="document id=[{0}] created".format(document_id)), 200
    else:
        response = jsonify(success=success, errors=document.errors), 400
    return response


@app.route('/reserves/<int:document_id>', methods=['GET'])
def get_reserve(document_id):
    document = dao.Reserve(pool, document_id)
    return jsonify(document.to_dict())


@app.route('/reserve/<int:document_id>', methods=['DELETE'])
def del_reserve(document_id):
    document = dao.Reserve(pool)
    success = document.delete(document_id)
    if success:
        response = ('', 204)
    else:
        response = jsonify(success=False, errors=document.errors), 400

    return response


@app.route('/reserve/<int:document_id>/body', methods=['PATCH'])
def patch_reserve_body(document_id):
    data = request.get_json()
    if data:
        d = dao.Reserve(pool)
        d.from_dict(data)
        d.reinit(document_id)
        return jsonify(str(document_id))
    else:
        return '', 400


@app.route('/reserves/<int:document_id>/fsmt', methods=['PUT'])
def patch_reserve_fsmt(document_id):
    success = False
    inputs = FsmtJsonInputs(request)

    if not inputs.validate():
        response = jsonify(success=False, errors=inputs.errors), 400
    else:
        data = request.get_json()
        document = dao.Reserve(pool)

        if data['curr_fsmt'] == 'COMMITTED':
            success = document.commit(document_id)
            response = jsonify(success=success, message="document commited"), 200
        elif data['curr_fsmt'] == 'DECOMMITTED':
            success = document.decommit(document_id)
            response = jsonify(success=success, message="document decommited"), 200
        else:
            return jsonify(success=success, errors="incorrect fsmt"), 400

        if not success:
            response = jsonify(success=False, errors=document.errors), 400

    if not response:
        response = jsonify(success=success, message="unexpected error"), 400

    return response


@app.route('/picklists', methods=['GET'])
def get_picklists():
    sdate, edate, facility = date_range_helper(request)
    return jsonify(dao.PicklistList(pool, facility, sdate, edate).to_dict())


@app.route('/picklists', methods=['POST'])
def post_picklist():
    success = False
    document_id = None
    inputs = OutboundDocumentJsonInputs(request)
    if not inputs.validate():
        response = jsonify(success=success, errors=inputs.errors), 400
        return response
    else:
        data = request.get_json()
        document = dao.Picklist(pool)
        document.from_dict(data)
        document_id = document.init()
    if document_id:
        success = True
        response = jsonify(success=success, message="document id=[{0}] created".format(document_id)), 200
    else:
        response = jsonify(success=success, errors=document.errors), 400
    return response


@app.route('/picklists/<int:document_id>', methods=['GET'])
def get_picklist(document_id):
    document = dao.Picklist(pool, document_id)
    return jsonify(document.to_dict())


@app.route('/picklists/<int:document_id>', methods=['DELETE'])
def del_picklist(document_id):
    document = dao.Picklist(pool)
    success = document.delete(document_id)
    if success:
        response = ('', 204)
    else:
        response = jsonify(success=False, errors=document.errors), 400

    return response


@app.route('/picklists/<int:document_id>/body', methods=['PATCH'])
def patch_picklists_body(document_id):
    data = request.get_json()
    if data:
        d = dao.Picklist(pool)
        d.from_dict(data)
        d.reinit(document_id)
        return jsonify(str(document_id))
    else:
        return '', 400


@app.route('/picklists/<int:document_id>/fsmt', methods=['PUT'])
def patch_picklist_fsmt(document_id):
    success = False
    inputs = FsmtJsonInputs(request)

    if not inputs.validate():
        response = jsonify(success=False, errors=inputs.errors), 400
    else:
        data = request.get_json()
        document = dao.Picklist(pool)

        if data['curr_fsmt'] == 'COMMITTED':
            success = document.commit(document_id)
            response = jsonify(success=success, message="document commited"), 200
        elif data['curr_fsmt'] == 'DECOMMITTED':
            success = document.decommit(document_id)
            response = jsonify(success=success, message="document decommited"), 200
        else:
            return jsonify(success=success, errors="incorrect fsmt"), 400

        if not success:
            response = jsonify(success=False, errors=document.errors), 400

    if not response:
        response = jsonify(success=success, message="unexpected error"), 400

    return response


@app.route('/issues', methods=['GET'])
def get_issues():
    sdate, edate, facility = date_range_helper(request)
    return jsonify(dao.IssueList(pool, facility, sdate, edate).to_dict())


@app.route('/issues', methods=['POST'])
def post_issue():
    success = False
    document_id = None
    inputs = OutboundDocumentJsonInputs(request)
    if not inputs.validate():
        response = jsonify(success=success, errors=inputs.errors), 400
        return response
    else:
        data = request.get_json()
        document = dao.Issue(pool)
        document.from_dict(data)
        document_id = document.init()
    if document_id:
        success = True
        response = jsonify(success=success, message="document id=[{0}] created".format(document_id)), 200
    else:
        response = jsonify(success=success, errors=document.errors), 400
    return response


@app.route('/issues/<int:document_id>', methods=['GET'])
def get_issue(document_id):
    document = dao.Issue(pool, document_id)
    return jsonify(document.to_dict())


@app.route('/issues/<int:document_id>', methods=['DELETE'])
def del_issue(document_id):
    document = dao.Issue(pool)
    success = document.delete(document_id)
    if success:
        response = ('', 204)
    else:
        response = jsonify(success=False, errors=document.errors), 400

    return response


@app.route('/issues/<int:document_id>/body', methods=['PATCH'])
def patch_issues_body(document_id):
    data = request.get_json()
    if data:
        d = dao.Issue(pool)
        d.from_dict(data)
        d.reinit(document_id)
        return jsonify(str(document_id))
    else:
        return '', 400


@app.route('/issues/<int:document_id>/fsmt', methods=['PUT'])
def patch_issue_fsmt(document_id):
    success = False
    inputs = FsmtJsonInputs(request)

    if not inputs.validate():
        response = jsonify(success=False, errors=inputs.errors), 400
    else:
        data = request.get_json()
        document = dao.Issue(pool)

        if data['curr_fsmt'] == 'COMMITTED':
            success = document.commit(document_id)
            response = jsonify(success=success, message="document commited"), 200
        elif data['curr_fsmt'] == 'DECOMMITTED':
            success = document.decommit(document_id)
            response = jsonify(success=success, message="document decommited"), 200
        else:
            return jsonify(success=success, errors="incorrect fsmt"), 400

        if not success:
            response = jsonify(success=False, errors=document.errors), 400

    if not response:
        response = jsonify(success=success, message="unexpected error"), 400

    return response


@app.route('/despatches', methods=['GET'])
def get_despatches():
    sdate, edate, facility = date_range_helper(request)
    return jsonify(dao.DespatchList(pool, facility, sdate, edate).to_dict())


@app.route('/despatches', methods=['POST'])
def post_despatch():
    success = False
    document_id = None
    inputs = OutboundDocumentJsonInputs(request)
    if not inputs.validate():
        response = jsonify(success=success, errors=inputs.errors), 400
        return response
    else:
        data = request.get_json()
        document = dao.Despatch(pool)
        document.from_dict(data)
        document_id = document.init()
    if document_id:
        success = True
        response = jsonify(success=success, message="document id=[{0}] created".format(document_id)), 200
    else:
        response = jsonify(success=success, errors=document.errors), 400
    return response


@app.route('/despatches/<int:document_id>', methods=['GET'])
def get_despatch(document_id):
    document = dao.Despatch(pool, document_id)
    return jsonify(document.to_dict())


@app.route('/despatches/<int:document_id>', methods=['DELETE'])
def del_despatch(document_id):
    document = dao.Despatch(pool)
    success = document.delete(document_id)
    if success:
        response = ('', 204)
    else:
        response = jsonify(success=False, errors=document.errors), 400

    return response



@app.route('/despatches/<int:document_id>/body', methods=['PATCH'])
def patch_despatches_body(document_id):
    data = request.get_json()
    if data:
        d = dao.Despatch(pool)
        d.from_dict(data)
        d.reinit(document_id)
        return jsonify(str(document_id))
    else:
        return '', 400


@app.route('/despatches/<int:document_id>/fsmt', methods=['PUT'])
def patch_despatch_fsmt(document_id):
    success = False
    inputs = FsmtJsonInputs(request)

    if not inputs.validate():
        response = jsonify(success=False, errors=inputs.errors), 400
    else:
        data = request.get_json()
        document = dao.Despatch(pool)

        if data['curr_fsmt'] == 'COMMITTED':
            success = document.commit(document_id)
            response = jsonify(success=success, message="document commited"), 200
        elif data['curr_fsmt'] == 'DECOMMITTED':
            success = document.decommit(document_id)
            response = jsonify(success=success, message="document decommited"), 200
        else:
            return jsonify(success=success, errors="incorrect fsmt"), 400

        if not success:
            response = jsonify(success=False, errors=document.errors), 400

    if not response:
        response = jsonify(success=success, message="unexpected error"), 400

    return response


@app.route('/rebounds', methods=['GET'])
def get_rebounds():
    sdate, edate, facility = date_range_helper(request)
    return jsonify(dao.ReboundList(pool, facility, sdate, edate).to_dict())


@app.route('/rebounds', methods=['POST'])
def post_rebound():
    success = False
    document_id = None
    inputs = InboundDocumentJsonInputs(request)
    if not inputs.validate():
        response = jsonify(success=success, errors=inputs.errors), 400
        return response
    else:
        data = request.get_json()
        document = dao.Rebound(pool)
        document.from_dict(data)
        document_id = document.init()
    if document_id:
        success = True
        response = jsonify(success=success, message="document id=[{0}] created".format(document_id)), 200
    else:
        response = jsonify(success=success, errors=document.errors), 400
    return response


@app.route('/rebounds/<int:document_id>', methods=['GET'])
def get_rebound(document_id):
    document = dao.Rebound(pool, document_id)
    return jsonify(document.to_dict())


@app.route('/rebounds/<int:document_id>', methods=['DELETE'])
def del_rebound(document_id):
    document = dao.Rebound(pool)
    success = document.delete(document_id)
    if success:
        response = ('', 204)
    else:
        response = jsonify(success=False, errors=document.errors), 400

    return response


@app.route('/rebounds/<int:document_id>/body', methods=['PATCH'])
def patch_rebounds_body(document_id):
    data = request.get_json()
    if data:
        d = dao.Rebound(pool)
        d.from_dict(data)
        d.reinit(document_id)
        return jsonify(str(document_id))
    else:
        return '', 400


@app.route('/rebounds/<int:document_id>/fsmt', methods=['PUT'])
def patch_rebound_fsmt(document_id):
    success = False
    inputs = FsmtJsonInputs(request)

    if not inputs.validate():
        response = jsonify(success=False, errors=inputs.errors), 400
    else:
        data = request.get_json()
        document = dao.Rebound(pool)

        if data['curr_fsmt'] == 'COMMITTED':
            success = document.commit(document_id)
            response = jsonify(success=success, message="document commited"), 200
        elif data['curr_fsmt'] == 'DECOMMITTED':
            success = document.decommit(document_id)
            response = jsonify(success=success, message="document decommited"), 200
        else:
            return jsonify(success=success, errors="incorrect fsmt"), 400

        if not success:
            response = jsonify(success=False, errors=document.errors), 400

    if not response:
        response = jsonify(success=success, message="unexpected error"), 400

    return response


@app.route('/deliveries', methods=['GET'])
def get_deliveries():
    sdate, edate, facility = date_range_helper(request)
    return jsonify(dao.DeliveryList(pool, facility, sdate, edate).to_dict())


@app.route('/deliveries', methods=['POST'])
def post_delivery():
    success = False
    document_id = None
    inputs = InboundDocumentJsonInputs(request)
    if not inputs.validate():
        response = jsonify(success=success, errors=inputs.errors), 400
        return response
    else:
        data = request.get_json()
        document = dao.Delivery(pool)
        document.from_dict(data)
        document_id = document.init()
    if document_id:
        success = True
        response = jsonify(success=success, message="document id=[{0}] created".format(document_id)), 200
    else:
        response = jsonify(success=success, errors=document.errors), 400
    return response


@app.route('/deliveries/<int:document_id>', methods=['GET'])
def get_delivery(document_id):
    document = dao.Delivery(pool, document_id)
    return jsonify(document.to_dict())


@app.route('/deliveries/<int:document_id>', methods=['DELETE'])
def del_delivery(document_id):
    document = dao.Delivery(pool)
    success = document.delete(document_id)
    if success:
        response = ('', 204)
    else:
        response = jsonify(success=False, errors=document.errors), 400

    return response


@app.route('/deliveries/<int:document_id>/body', methods=['PATCH'])
def patch_deliveries_body(document_id):
    data = request.get_json()
    if data:
        d = dao.Delivery(pool)
        d.from_dict(data)
        d.reinit(document_id)
        return jsonify(str(document_id))
    else:
        return '', 400


@app.route('/deliveries/<int:document_id>/fsmt', methods=['PUT'])
def patch_delivery_fsmt(document_id):
    success = False
    inputs = FsmtJsonInputs(request)

    if not inputs.validate():
        response = jsonify(success=False, errors=inputs.errors), 400
    else:
        data = request.get_json()
        document = dao.Delivery(pool)

        if data['curr_fsmt'] == 'COMMITTED':
            success = document.commit(document_id)
            response = jsonify(success=success, message="document commited"), 200
        elif data['curr_fsmt'] == 'DECOMMITTED':
            success = document.decommit(document_id)
            response = jsonify(success=success, message="document decommited"), 200
        else:
            return jsonify(success=success, errors="incorrect fsmt"), 400

        if not success:
            response = jsonify(success=False, errors=document.errors), 400

    if not response:
        response = jsonify(success=success, message="unexpected error"), 400

    return response


@app.route('/receipts', methods=['GET'])
def get_receipts():
    sdate, edate, facility = date_range_helper(request)
    return jsonify(dao.ReceiptList(pool, facility, sdate, edate).to_dict())


@app.route('/receipts', methods=['POST'])
def post_receipt():
    success = False
    document_id = None
    inputs = InboundDocumentJsonInputs(request)
    if not inputs.validate():
        response = jsonify(success=success, errors=inputs.errors), 400
        return response
    else:
        data = request.get_json()
        document = dao.Receipt(pool)
        document.from_dict(data)
        document_id = document.init()
    if document_id:
        success = True
        response = jsonify(success=success, message="document id=[{0}] created".format(document_id)), 200
    else:
        response = jsonify(success=success, errors=document.errors), 400
    return response


@app.route('/receipts/<int:document_id>', methods=['GET'])
def get_receipt(document_id):
    document = dao.Receipt(pool, document_id)
    return jsonify(document.to_dict())


@app.route('/receipts/<int:document_id>', methods=['DELETE'])
def del_receipt(document_id):
    document = dao.Receipt(pool)
    success = document.delete(document_id)
    if success:
        response = ('', 204)
    else:
        response = jsonify(success=False, errors=document.errors), 400

    return response


@app.route('/receipts/<int:document_id>/body', methods=['PATCH'])
def patch_receipts_body(document_id):
    data = request.get_json()
    if data:
        d = dao.Receipt(pool)
        d.from_dict(data)
        d.reinit(document_id)
        return jsonify(str(document_id))
    else:
        return '', 400


@app.route('/receipts/<int:document_id>/fsmt', methods=['PUT'])
def patch_receipt_fsmt(document_id):
    success = False
    inputs = FsmtJsonInputs(request)

    if not inputs.validate():
        response = jsonify(success=False, errors=inputs.errors), 400
    else:
        data = request.get_json()
        document = dao.Receipt(pool)

        if data['curr_fsmt'] == 'COMMITTED':
            success = document.commit(document_id)
            response = jsonify(success=success, message="document commited"), 200
        elif data['curr_fsmt'] == 'DECOMMITTED':
            success = document.decommit(document_id)
            response = jsonify(success=success, message="document decommited"), 200
        else:
            return jsonify(success=success, errors="incorrect fsmt"), 400

        if not success:
            response = jsonify(success=False, errors=document.errors), 400

    if not response:
        response = jsonify(success=success, message="unexpected error"), 400

    return response


@app.route('/cutoffs', methods=['GET'])
def get_cutoffs():
    sdate, edate, facility = date_range_helper(request)
    return jsonify(dao.CutoffList(pool, facility, sdate, edate).to_dict())


@app.route('/cutoffs', methods=['POST'])
def post_cutoff():
    success = False
    document_id = None
    inputs = GenericDocumentJsonInputs(request)
    if not inputs.validate():
        response = jsonify(success=success, errors=inputs.errors), 400
        return response
    else:
        data = request.get_json()
        document = dao.Cutoff(pool)
        document.from_dict(data)
        document_id = document.init()
    if document_id:
        success = True
        response = jsonify(success=success, message="document id=[{0}] created".format(document_id)), 200
    else:
        response = jsonify(success=success, errors=document.errors), 400
    return response


@app.route('/cutoffs/<int:document_id>', methods=['GET'])
def get_cutoff(document_id):
    document = dao.Cutoff(pool, document_id)
    return jsonify(document.to_dict())


@app.route('/cutoffs/<int:document_id>', methods=['DELETE'])
def del_cutoff(document_id):
    document = dao.Cutoff(pool)
    success = document.delete(document_id)
    if success:
        response = ('', 204)
    else:
        response = jsonify(success=False, errors=document.errors), 400

    return response


@app.route('/cutoffs/<int:document_id>/fsmt', methods=['PUT'])
def patch_cutoffs_fsmt(document_id):
    success = False
    inputs = FsmtJsonInputs(request)

    if not inputs.validate():
        response = jsonify(success=False, errors=inputs.errors), 400
    else:
        data = request.get_json()
        document = dao.Cutoff(pool)

        if data['curr_fsmt'] == 'COMMITTED':
            success = document.commit(document_id)
            response = jsonify(success=success, message="document commited"), 200
        elif data['curr_fsmt'] == 'DECOMMITTED':
            success = document.decommit(document_id)
            response = jsonify(success=success, message="document decommited"), 200
        else:
            return jsonify(success=success, errors="incorrect fsmt"), 400

        if not success:
            response = jsonify(success=False, errors=document.errors), 400

    if not response:
        response = jsonify(success=success, message="unexpected error"), 400

    return response


@app.route('/stocktakes', methods=['GET'])
def get_stocktakes():
    sdate, edate, facility = date_range_helper(request)
    return jsonify(dao.StocktakeList(pool, facility, sdate, edate).to_dict())


@app.route('/stocktakes', methods=['POST'])
def post_stocktake():
    success = False
    document_id = None
    inputs = GenericDocumentJsonInputs(request)
    if not inputs.validate():
        response = jsonify(success=success, errors=inputs.errors), 400
        return response
    else:
        data = request.get_json()
        document = dao.Stocktake(pool)
        document.from_dict(data)
        document_id = document.init()
    if document_id:
        success = True
        response = jsonify(success=success, message="document id=[{0}] created".format(document_id)), 200
    else:
        response = jsonify(success=success, errors=document.errors), 400
    return response


@app.route('/stocktakes/<int:document_id>', methods=['GET'])
def get_stocktake(document_id):
    document = dao.Stocktake(pool, document_id)
    return jsonify(document.to_dict())


@app.route('/stocktakes/<int:document_id>', methods=['DELETE'])
def del_stocktake(document_id):
    document = dao.Stocktake(pool)
    success = document.delete(document_id)
    if success:
        response = ('', 204)
    else:
        response = jsonify(success=False, errors=document.errors), 400

    return response


@app.route('/stocktakes/<int:document_id>/body', methods=['PATCH'])
def patch_stocktakes_body(document_id):
    data = request.get_json()
    if data:
        d = dao.Stocktake(pool)
        d.from_dict(data)
        d.reinit(document_id)
        return jsonify(str(document_id))
    else:
        return '', 400


@app.route('/stocktakes/<int:document_id>/fsmt', methods=['PUT'])
def patch_stocktake_fsmt(document_id):
    success = False
    inputs = FsmtJsonInputs(request)

    if not inputs.validate():
        response = jsonify(success=False, errors=inputs.errors), 400
    else:
        data = request.get_json()
        document = dao.Stocktake(pool)

        if data['curr_fsmt'] == 'COMMITTED':
            success = document.commit(document_id)
            response = jsonify(success=success, message="document commited"), 200
        elif data['curr_fsmt'] == 'DECOMMITTED':
            success = document.decommit(document_id)
            response = jsonify(success=success, message="document decommited"), 200
        else:
            return jsonify(success=success, errors="incorrect fsmt"), 400

        if not success:
            response = jsonify(success=False, errors=document.errors), 400

    if not response:
        response = jsonify(success=success, message="unexpected error"), 400

    return response


@app.route('/stockcards', methods=['GET'])
def get_stockcards():
    return '', 405


@app.route('/stockcards/<int:document_id>', methods=['GET'])
def get_stockcard(document_id):
    #return 'stockcard id: {0}'.format(document_id)
    return '', 405


@app.route('/balance', methods=['GET'])
def get_balance():
    document = dao.Balance(pool)
    document.load()
    print(document.body)
    return jsonify(document.to_dict()), 200


if __name__ == '__main__':
    app.run(debug=True)
