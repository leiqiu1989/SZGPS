<div id="carImport" class="full">
	<div class="panel panel-transparent no-margin">
		<div class="panel-heading">
			<h3 class="panel-title">
				<ol class="breadcrumb no-padding no-margin bg-white">
				  <li>车辆信息</li>
				  <li class="active">车辆信息导入</li>
				</ol>
			</h3>
		</div>
		<div class="panel-toolbar form-inline">
			<div class="form-group btn-toolbar">
				<a class="btn btn-default js_import_back"> <i class="fa fa-reply"></i>
					返 回
				</a>
			</div>
		</div>
		<div class="panel-body">
			<div class="panel panel-transparent no-margin">
				<div class="panel-heading">
					<h3 class="panel-title">上传数据</h3>
				</div>
				<div class="panel-body">
					<form method="post" id="frmImprot" enctype="multipart/form-data">
						<div class='row'>
							<div class='col-sm-4'>
								<p class="m15 f16">
									请选择需要导入的文件:(支持xlsx格式)：
									<a href="javascript:" class="btn btn-info js_import_download">下载模板</a>
								</p>
								<p class="m15">
									<input type="file" name="file" id="importFile" />
								</p>
								<p class="m15 mb0">
									<label for="user_title">数据所属机构</label>
									<input type="hidden" name="orgId" />
									<input type="hidden" name="sid" />
									<input type="hidden" name="st" />
									<input class="form-control" type="text" name="orgName" placeholder="至少输入3个字符搜索" />
									<ul class="ul-select m15 mt0 hidden"></ul>
								</p>
								<p class="m15">
									<a href="javascript:" class="btn btn-primary js_import_check">校 验</a>
								</p>
							</div>
							<div class='col-sm-3'>
								<div class="alert alert-info">
									<p class="m15">1、导入时先选择导入数据的所属机构</p>
									<p class="m15">2、所属机构搜索至少输入3个字符</p>
								</div>
							</div>
							<div class='col-sm-5'>
								<div class="alert alert-info">
									<dl>
										<dt> <b>支持格式</b>
										</dt>
										<dd>你可以导入XLSX格式(最多1500条记录)的数据</dd>
									</dl>
									<dl>
										<dt> <b>导入提示</b>
										</dt>
										<dd>给定文件的第一行将视为字段名</dd>
										<dd>请确认你的文件大小不超过5MB</dd>
										<dd>在检查重复记录时,车辆已车牌号+车牌颜色进行重复数据校验</dd>
										<dd>日期必须符合:yyyy/MM/dd格式</dd>
										<dd>日期时间必须符合:yyyy/MM/dd HH:mm:ss格式</dd>
									</dl>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="panel panel-transparent no-margin">
				<div class="panel-heading">
					<h3 class="panel-title">数据导入</h3>
				</div>
				<div class="panel-body">
					<div class="panel no-margin">
						<div class="panel-heading no-padding datatable-header">
							<table class="table no-margin">
								<colgroup>
								<col width="150px"/>
								<col width="100px"/>
								<col width="80px"/>
								<col width="100px"/>
								<col width="80px"/>
								<col width="80px"/>
								<col width="80px"/>
								<col width="130px"/>
								<col width="100px"/>
								<col width="80px"/>
								<col width="130px"/>
								<col width="100px"/>
								<col width="100px"/>
							</colgroup>
							<thead class="thin-border-bottom">
								<tr>
									<th>异常提示</th>
									<th>车牌号码</th>
									<th>车牌颜色</th>
									<th>所属单位</th>
									<th>车辆品牌</th>
									<th>车辆类型</th>
									<th>主驾</th>
									<th>身份证号码</th>
									<th>联系电话</th>
									<th>副驾</th>
									<th>身份证号码</th>
									<th>联系电话</th>
									<th>GPS设备编号</th>
								</tr>
							</thead>
						</table>
					</div>
					<div id="importData" class="datatable-content datatable-content-patch panel-body no-padding h-300">
				</div>
				<div class="panel-footer clearfix">
					<div class="pull-left">
						<a href="javascript:" class="btn btn-primary disabled js_import_import">导 入</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>