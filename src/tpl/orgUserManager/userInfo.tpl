<div class='row'>
    <div class='col-sm-2'>
        <div class='form-group'>
            <label for="" class="required">真实姓名</label>
            <input class="form-control" required name="RealName" type="text" />
        </div>
    </div>
    <div class='col-sm-2'>
        <div class='form-group'>
            <label for="" class="required">用户名</label>
            <input class="form-control" required name="UserName" type="text" />
        </div>
    </div>
    <div class='col-sm-2'>
        <div class='form-group'>
            <label for="" class="required">密 码</label>
            <input class="form-control" name="Pwd" type="password" required />
        </div>
    </div>
    <div class='col-sm-2'>
        <div class='form-group'>
            <label for="" class="required">联系电话</label>
            <input type="text" class="form-control" data-type="tel" required  name="Phone" />
        </div>
    </div>
    <div class='col-sm-2'>
        <div class='form-group'>
            <label for="" class="required">角 色</label>
            <select class="form-control" name="RoleId" required>
                <% for (var i=0;i< roles.length;i++) { %>
                    <option value="<%= roles[i].RoleId %>"><%= roles[i].RoleName %></option>
                <% } %>
            </select>
        </div>
    </div>
    <div class='col-sm-2'>
        <div class='form-group'>
            <label for="" style="height:20px"></label>
            <a class="form-control pointer no-border js_delete">
                <i class="fa fa-times"></i>
            </a>
        </div>                            
    </div>
</div>