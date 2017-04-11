<div class="panel panel-transparent flexbox">
    <div class="panel-heading">
        <h3 class="panel-title">地标点管理</h3>
    </div>
    <div class="panel-toolbar">
        <table class="table table-form-horizontal no-margin w-auto table-form-horizontal-patch">
            <tbody>
                <tr>
                    <td>
                        <label class="control-label">地标名称</label>
                        <input type="text" class="form-control w-200" name="landMarkName" placeholder="请输入地标名称" value="<%= searchValue.landMarkName %>" />
                    </td>
                    <td class="pl20">
                        <a href="javascript:" class="btn btn-primary js_list_search mr10">查 询</a>
                        <a href="javascript:" class="btn btn-primary js_list_reset">重 置</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="panel-toolbar form-inline">
        <div class="form-group btn-toolbar">
            <a class="btn btn-primary js_list_add"> <i class="fa fa-plus"></i> 新 增
            </a>
        </div>
    </div>
    <div class="panel-body row-container grow">
        <div class="row row-static">
            <div class="col-static col-xs-12 no-padding">
                <div class="panel no-margin flexbox">
                    <div class="panel-heading no-padding datatable-header">
                        <table class="table table-bordered no-margin">
                            <colgroup>
                                <col width="50px" />
                                <col width="20%" />
                                <col width="20%" />
                                <col width="20%" />
                                <col width="20%" />
                                <col width="17%" />
                            </colgroup>
                            <thead class="thin-border-bottom">
                                <tr>
                                    <th class="align-center">
                                        <input type="checkbox" name="checkAll" />
                                    </th>
                                    <th>地标名称</th>
                                    <th>经度</th>
                                    <th>维度</th>
                                    <th>备注</th>
                                    <th>操 作</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                    <div id="landMarkPontList" class="datatable-content panel-body no-padding grow"></div>
                    <div class="panel-footer clearfix">
                        <div id="page" class="pull-right"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>