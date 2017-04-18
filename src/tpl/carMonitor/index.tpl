<div class="panel panel-transparent full">
    <div id="monitorMap" class="full"></div>
    <!--车辆列表-->
    <div class="monitorList">
        <div class="monitorBar clearfix">
            <div class="monitorOrganizationIcon pull-left js-origin "></div>
            <div class="monitorCarSummary pull-left ">
                <span class="active ">加载车辆<span class="js-carTotal ">0</span></span>
                <span class="online ">在线<span class="js-onLineTotal ">0</span></span>
                <span class="offline ">离线<span class="js-offLineTotal ">0</span></span>
            </div>
            <!--<div class="monitorCarSearch pull-left ">
                <div class="inline-block mr10 ">
                    <span>车牌号码：</span>
                    <input type="text " class="normalText " placeholder="请输入车牌号 " />
                </div>
                <div class="inline-block ">
                    <a class="btn-basic-default ">
                        查 询
                    </a>
                </div>
            </div>-->
            <div class="pull-right">
                <a class="foldUp js-foldToggle "></a>
            </div>
        </div>
        <div class="monitorBody">
            <div class="panel no-margin flexbox">
                <div class="grid ">
                    <div class="table-head ">
                        <div class="table-head-warp ">
                            <table class="grid-table ">
                                <colgroup>
                                    <col width="50px " />
                                    <col width="10% " />
                                    <col width="8% " />
                                    <col width="12% " />
                                    <col width="10% " />
                                    <col width="12% " />
                                    <col width="10% " />
                                    <col width="35% " />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>操作</th>
                                        <th>车牌号码</th>
                                        <th>GPS时间</th>
                                        <th>速度(Km/h)</th>
                                        <th>车辆状态</th>
                                        <th>行驶方向</th>
                                        <th>位置</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel-body no-padding grow ">
                    <div id="carMonitorList" class="grid-content">
                        <table class="grid-table ">
                            <colgroup>
                                <col width="50px " />
                                <col width="10% " />
                                <col width="8% " />
                                <col width="12% " />
                                <col width="10% " />
                                <col width="12% " />
                                <col width="10% " />
                                <col width="35% " />
                            </colgroup>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--组织列表-->
    <div class="vehicle-box">
        <div class="vehicle-header clearfix">
            <div class="vehicle-title pull-left">
                <h4>组织列表</h4>
            </div>
            <div class="pull-right vehicle-close">
                X
            </div>
        </div>
        <div class="vehicle-search">
            <input type="text" class="normalText w-300" name="searchTreeText" id="searchTreeText" placeholder="请输入车牌号或组织名查找" />
        </div>
        <div id="vehicleTree" class="vehicle-tree ztree">
        </div>
        <div class="align-center vehicleOK">
            <a class="btn-basic-large w-200 js-vehicle-ok">
                确 定
            </a>
        </div>
    </div>
    <!-- 地图搜索 -->
    <div class="mapTools">
        <div class="inputSearch relative">
            <span>车牌号码</span>
            <input type="text" name="txtCarPlateNo" />
            <a href="javascript:void(0)" class="js-search-car"></a>
        </div>
        <div class="obd js-toggleOBD">
            OBD信息
        </div>
    </div>
    <!-- OBD信息列表 -->
    <div id="obdList" class="OBDInfo hidden">
        <div class="obd-Title">
            <span>OBD信息</span>
            <div class="pull-right odb-close">X</div>
        </div>
        <div class="obd-Content">
        </div>
    </div>
</div>