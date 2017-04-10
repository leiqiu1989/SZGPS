<% 
    for(var i=0;i< data.length;i++) {
        var subMenus= data[i];
        if(subMenus.length > 0) {
            var icon= subMenus[0].icon;
            var groupname= subMenus[0].groupname;
%>
    <h3 class="menu-head">
        <i class="menu-icon <%= icon %>"></i> &nbsp;
        <%= groupname %>
    </h3>
    <div class="menu-body">
        <% 
            for(var j=0;j < subMenus.length;j++) {
                var item= subMenus[j];
        %>
            <a href="<%= item.url %>">
                <%= item.name %>
            </a>
            <% } %>
    </div>
    <% }
     } %>