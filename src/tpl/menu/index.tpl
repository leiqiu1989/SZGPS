<% var ulcls = collapse ? 'nav nav-list' : 'accordion' %>

    <ul class="<%= ulcls %>">
        <% 
for(var i=0;i< data.length;i++) {
var subMenus= data[i];
if(subMenus.length > 0) {
var icon= subMenus[0].icon;
var groupname= subMenus[0].groupname;
%>
            <li>
                <%if(!collapse){%>
                    <div class="link">
                        <i class="menu-icon <%= icon %>"></i>
                        <%= groupname %>
                            <i class="fa fa-chevron-down"></i>
                    </div>
                    <%}else{%>
                        <a href="javascript:" class="dropdown-toggle">
<i class="menu-icon menu-icon <%= icon %>"></i>
<span class="menu-text"><%= groupname %></span>
</a>
                        <%}%>
                            <ul class="submenu">
                                <% 
for(var j=0;j < subMenus.length;j++) {
var item= subMenus[j];
%>
                                    <li>
                                        <a href="<%= item.url %>">
                                            <%= item.name %>
                                        </a>
                                    </li>
                                    <% } %>
                            </ul>
            </li>
            <% }
} %>
    </ul>