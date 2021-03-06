<form id="frmaddCar" class="full">
	
	<div class="panel panel-transparent no-margin">
		<div class="panel-heading">
			<h3 class="panel-title js_add_title">
				<ol class="breadcrumb no-padding no-margin bg-white">
				  <li>车辆信息</li>
				  <li class="active"><%= title ? title : '新增车辆' %></li>
				</ol>
			</h3>
		</div>
		<div class="panel-toolbar form-inline">
			<div class="form-group btn-toolbar">
				<a class="btn btn-default js_add_back"> <i class="fa fa-reply"></i>
					返 回
				</a>
			</div>
		</div>
		<div class="panel-body">
			<div class="panel panel-transparent">
				<div class="panel-heading">
					<h3 class="panel-title"> <i class="fa fa-comment" aria-hidden="true"></i>
						车辆资料
					</h3>
				</div>
				<div class="panel-body">
					<div class='row'>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="plate_Number" class="required">车牌号码</label>
								<input class="form-control inline-text" maxlength="20" id="plate_Number" name="PlateNo" required type="text" value="<%= data.Vehicle.PlateNo%>" />
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="plateNumber_Color" class="required">车牌颜色</label>
								<select class="form-control" id="plateNumber_Color" name="Color" required>
								</select>
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="vehicle_Brand">车辆品牌</label>
								<select class="form-control" id="vehicle_Brand" name="Brand"></select>
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="truck_Type" class="required">车辆类型</label>
								<select class="form-control" required id="truck_Type" name="VehicleType"></select>
							</div>
						</div>
					</div>
					<div class='row'>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="truck_Load">购车日期</label>
								<input type="text" value="<%= data.Vehicle.BuyDate%>"  class="form-control form-control"  name="BuyDate" id="_outStockTime" value="">
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="truck_Length">导航屏</label>
								<input class="form-control" value="<%= data.Vehicle.Navigation%>" maxlength="20" id="truck_Length"  name="Navigation" type="text" />
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="org_name" class="required">所属机构</label>
								<input type="text" class="form-control" value="<%= data.Vehicle.OrgName%>" required name="orgName" data-nosubmit="true" placeholder="至少输入3个字符搜索" />
								<input type="hidden" name="OnlyOrgNo" value="<%= data.Vehicle.OrgNo%>" />
								<ul class="ul-select hidden"></ul>
							</div>
						</div>						
					</div>				
				</div>
			</div>
			<div id="driveInfo" class="panel panel-transparent">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-user-plus" aria-hidden="true"></i>
						司机资料
					</h3>
				</div>
				<div class="panel-body">
					<div class='row'>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label class="required">司机姓名</label>
								<input class="form-control" value="<%= data.Driver.DriverName%>" required maxlength="10" name="DriverName" type="text" />
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="master_IdCard" class="required">身份证号码</label>
								<input class="form-control" data-type="idcard" value="<%= data.Driver.IDCard%>" required maxlength="20" id="master_IdCard" name="IDCard" type="text" />
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="master_Telephone" class="required">联系电话</label>
								<input class="form-control" data-type="tel" value="<%= data.Driver.PhoneNo%>" required  maxlength="20" id="master_Telephone" name="PhoneNo" data-type="tel" type="text" />
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="master_CardType">紧急联系电话</label>
								<input type="text" data-type="tel" value="<%= data.Driver.UrgencyContactPhone%>" class="form-control"  maxlength="20" id="master_CardType"  name="UrgencyContactPhone" />
							</div>
						</div>
					</div>
					<div class='row'>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label>家庭住址</label>
								<input type="text"  value="<%= data.Driver.HomeAddress%>" maxlength="50" class="form-control"  name="HomeAddress" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-transparent no-margin">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-wifi" aria-hidden="true"></i>
						GPS设备资料
					</h3>
				</div>
				<div class="panel-body">
					<div class='row'>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="" class="required">设备编号</label>
								<input class="form-control" value="<%= data.Equipment.EquipmentNo%>" required  name="EquipmentNo" type="text" />
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="master_IdCard" class="required">设备类型</label>
								<select class="form-control" id="equipmentType" name="EquipmentTypeId" required>
								</select>
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="">设备名称</label>
								<input class="form-control" value="<%= data.Equipment.DeviceName%>" maxlength="10"  name="DeviceName"  type="text" />
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="master_CardType" class="required">SIM卡号码</label>
								<input type="text" maxlength="20" value="<%= data.Simcard.SimCardNo%>" class="form-control" id="master_CardType" name="SimCardNo"  required/>
							</div>
						</div>
					</div>
					<div class='row'>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="">入网时间</label>
								<input type="text"  value="<%= data.Simcard.STime%>" class="form-control form-control" name="STime" id="gpsStartTime" value="">
							</div>
						</div>
						<div class='col-sm-3'>
							<div class='form-group'>
								<label for="">到期时间</label>
								<input type="text" value="<%= data.Simcard.ETime%>" class="form-control form-control" name="ETime" id="gpsEndTime" value="">
							</div>
						</div>
					</div>
					<div class="row">
						<div class='col-sm-6'>
							<div class='form-group'>
								<label for="_remark">备注</label>
								<textarea class="form-control" maxlength="100" name="Remark" rows="3" id="_remark">
								<%= data.Vehicle.Remark%></textarea>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-footer panel-footer-patch">
				<a class="btn btn-primary mr10 js_add_save">
					<i class="fa fa-check"></i>
					保 存
				</a>
				<a class="btn btn-default js_add_cancel">
					<i class="fa fa-ban"></i>
					取 消
				</a>
			</div>
		</div>
	</div>
</form>