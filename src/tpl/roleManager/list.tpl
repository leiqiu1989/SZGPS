<table class="table table-bordered table-hover no-margin">
    <colgroup>
        <col width="50px" />
        <col width="25%" />
        <col width="25%" />
        <col width="30%" />
        <col width="17%" />
    </colgroup>
    <tbody>
        <% if(data && data.length >	0) {
		for(var i = 0 , len = data.length; i < len; i++) {
			var item = data[i];
	%>
            <tr data-id="<%= item.RoleId%>">
                <td class="align-center">
                    <input type="checkbox" name="checkItem" />
                </td>
                <td title="<%= item.RoleName %>">
                    <%= item.RoleName %>
                </td>
                <td title="<%= formateDate(item.UpdateTime,'yyyy/MM/dd hh:mm') %>">
                    <%= formateDate(item.UpdateTime,'yyyy/MM/dd hh:mm') %>
                </td>
                <td title="<%= item.Remark %>">
                    <%= item.Remark %>
                </td>
                <td>
                    <a class="td-operator js_list_edit">
                        <i class="fa fa-pencil-square-o"></i> 编 辑
                    </a>
                    <a class="td-operator js_list_delete">
                        <i class="fa fa-times"></i> 删 除
                    </a>
                </td>
            </tr>
            <% } } %>
    </tbody>
</table>