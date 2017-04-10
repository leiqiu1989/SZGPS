<div id="frmOrgUser" class="full">
	<div class="panel panel-transparent no-margin">
		<div class="panel-heading">
			<h3 class="panel-title js_add_title">
				<ol class="breadcrumb no-padding no-margin bg-white">
				  <li>组织用户</li>
				  <li class="active"><%= title %></li>
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
						组织资料
					</h3>
				</div>
				<div class="panel-body fuckshit">
					<form id="frmOrgInfo" autocomplete="off">
						<div class='row'>
							<div class='col-sm-3'>
								<div class='form-group'>
									<label for="" class="required">所属机构</label>
									<input type="text" class="form-control" required value="<%= data.ParentOrgName %>" name="orgName" data-nosubmit="true" placeholder="至少输入3个字符搜索" />
									<input type="hidden" name="ParentOrgNo" value="<%= data.ParentOrgNo %>" />
									<input type="hidden" name="OrgId" value="<%= data.OrgId %>"/>
									<ul class="ul-select hidden"></ul>
								</div>
							</div>
							<div class='col-sm-3'>
								<div class='form-group'>
									<label for="" class="required">组织名称</label>
									<input class="form-control" value="<%= data.OrganizationName %>" required name="OrganizationName" type="text" />
								</div>
							</div>
							<div class='col-sm-3'>
								<div class='form-group'>
									<label for="">联系人</label>
									<input class="form-control" value="<%= data.Principal %>" name="Principal" type="text" />
								</div>
							</div>
							<div class='col-sm-3'>
								<div class='form-group'>
									<label for="">联系电话</label>
									<input class="form-control" value="<%= data.PrincipalPhone %>" data-type="tel" name="PrincipalPhone" type="text" />
								</div>
							</div>
						</div>
						<div class='row'>
							<div class='col-sm-3'>
								<div class='form-group'>
									<label for="" class="required">管理员账号</label>
									<input class="form-control" type="text" value="<%= data.Manager %>" required name="Manager" />
								</div>
							</div>
							<div class='col-sm-3'>
								<div class='form-group'>
									<label for="" class="required">密 码</label>
									<input type="text" readonly class="no-border" />
									<input class="form-control" name="ManagePwd" type="password" value="<%= data.ManagePwd %>" data-type="pwd" required />
								</div>
							</div>
							<div class='col-sm-3'>
								<div class='form-group'>
									<label for="">组织地址</label>
									<input class="form-control" type="text" value="<%= data.Address %>" name="Address" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class='col-sm-3'>
								<div class='form-group'>
									<label for="">备注</label>
									<textarea rows="5" class="form-control" name="Remark">
										<%= data.Remark %>
									</textarea>
								</div>
							</div>
						</div>
					</form>					
				</div>
			</div>
			<div class="panel panel-transparent">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-user-plus" aria-hidden="true"></i>
						用户信息
                        <span class="ml10 user-remind">（组织下最多绑定5个用户）</span>
                        <span class="ml10"><a class="user-remind-add js-addUser">新增用户</a></span>
					</h3>
				</div>
				<div class="panel-body">
					<form id="frmUserList" autocomplete="off">
						<% 
							if(isEdit) { 
								for(var i=0;i<data.Users.length;i++) {
									var item= data.Users[i];
						%>
							<div class='row'>
							<div class='col-sm-2'>
								<div class='form-group'>
									<label for="" class="required">真实姓名</label>
									<input class="form-control" value="<%= item.RealName %>" required name="RealName" type="text" />
								</div>
							</div>
							<div class='col-sm-2'>
								<div class='form-group'>
									<label for="" class="required">用户名</label>
									<input class="form-control" value="<%= item.UserName %>" required name="UserName" type="text" />
								</div>
							</div>
							<div class='col-sm-2'>
								<div class='form-group'>
									<label for="" class="required">密 码</label>
									<input class="form-control" name="Pwd" type="password" data-type="pwd" value="<%= item.Pwd %>" required />
								</div>
							</div>
							<div class='col-sm-2'>
								<div class='form-group'>
									<label for="" class="required">联系电话</label>
									<input type="text" class="form-control" data-type="tel" required value="<%= item.Phone %>" name="Phone" />
								</div>
							</div>
							<div class='col-sm-2'>
								<div class='form-group'>
									<label for="" class="required">角 色</label>
									<select class="form-control" name="RoleId"></select>
								</div>
							</div>
							<div class='col-sm-2'>
								<div class='form-group'>                                
								</div>
							</div>
						</div>
						<% } } else { %>
						<div class='row'>
							<div class='col-sm-2'>
								<div class='form-group'>
									<label for="" class="required">真实姓名</label>
									<input class="form-control" value="<%= data.RealName %>" required name="RealName" type="text" />
								</div>
							</div>
							<div class='col-sm-2'>
								<div class='form-group'>
									<label for="" class="required">用户名</label>
									<input class="form-control" value="<%= data.UserName %>" required name="UserName" type="text" />
								</div>
							</div>
							<div class='col-sm-2'>
								<div class='form-group'>
									<label for="" class="required">密 码</label>
									<input type="text" readonly class="no-border" />
									<input class="form-control" name="Pwd" type="password" data-type="pwd" value="<%= data.Pwd %>" required />
								</div>
							</div>
							<div class='col-sm-2'>
								<div class='form-group'>
									<label for="" class="required">联系电话</label>
									<input type="text" class="form-control" data-type="tel" required value="<%= data.Phone %>" name="Phone" />
								</div>
							</div>
							<div class='col-sm-2'>
								<div class='form-group'>
									<label for="" class="required">角 色</label>
									<select class="form-control" name="RoleId"></select>
								</div>
							</div>
							<div class='col-sm-2'>
								<div class='form-group'>                                
								</div>
							</div>
						</div>
						<% } %>						
					</form>		
				</div>
			</div>
			<div class="panel-footer panel-footer-patch">
				<a class="btn btn-primary mr10 js_add_save">
					<i class="fa fa-check"></i>
					保 存
				</a>
				<a class="btn btn-default js_add_back">
					<i class="fa fa-ban"></i>
					取 消
				</a>
			</div>
		</div>
	</div>
</div>