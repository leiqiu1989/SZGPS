<div class="panel panel-transparent flexbox">
    <div class="panel-heading">
        <h3 class="panel-title">订单信息</h3>
    </div>
    <div class="panel-toolbar">
        <table class="table table-form-horizontal no-margin w-auto table-form-horizontal-patch">
            <tbody>
                <tr>
                    <td>
                        <label class="control-label">订单编号</label>
                        <input type="text" class="form-control w-200" name="OrderNum" placeholder="" value="<%= searchValue.OrderNum%>" />
                    </td>
                    <td>
                        <label class="control-label">接单车辆</label>
                        <input type="text" class="form-control w-200" name="plateNo" placeholder="" value="<%= searchValue.plateNo %>" />
                    </td>
                    <td>
                        <label class="control-label">接单时间</label>
                        <input type="text" class="form-control w-150 inline-block" name="start" value="<%= searchValue.start %>" readonly="readonly" />
                        <span class="p15-lr">至</span>
                        <input type="text" class="form-control w-150 inline-block" name="end" value="<%= searchValue.end %>" readonly="readonly" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label">订单类型</label>
                        <select class="form-control w-200" id="vehicleType" name="OrderType">
							<option value="0">全部</option>
							<option value="1">位置订单</option>
							<option value="2">语音订单</option>
							<option value="4">微信订单</option>
						</select>
                    </td>
                    <td>
                        <label class="control-label">客户手机</label>
                        <input type="text" class="form-control w-200" maxlength="11" name="phone" placeholder="" value="<%= searchValue.phone %>" />
                    </td>
                    <td class="pl20">
                        <a href="javascript:" class="btn btn-primary js_list_search mr10">查 询</a>
                        <a href="javascript:" class="btn btn-primary js_list_reset">重 置</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="panel-body row-container grow">
        <div class="row row-static">
            <div class="col-static col-xs-12 no-padding">
                <div class="panel no-margin flexbox">
                    <div class="panel-heading no-padding datatable-header">
                        <table class="table  no-margin">
                            <colgroup>
                                <col width="15%" />
                                <col width="12%" />
                                <col width="12%" />
                                <col width="9%" />
                                <col width="9%" />
                                <col width="9%" />
                                <col width="12%" />
                                <col width="12%" />
                                <col width="10%" />
                            </colgroup>
                            <thead class="thin-border-bottom">
                                <tr>
                                    <th>订单编号</th>
                                    <th>客户手机</th>
                                    <th>订单时间</th>
                                    <th>订单类型</th>
                                    <th>订单内容</th>
                                    <th>接单车辆</th>
                                    <th>接单时间</th>
                                    <th>接单地点</th>
                                    <th>订单结果</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                    <div id="carList" class="datatable-content panel-body no-padding grow"></div>
                    <div class="panel-footer clearfix">
                        <div id="page" class="pull-right"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>