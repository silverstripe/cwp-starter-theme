<% loop $Children %>
    <ul class="nav">
        <li class="$LinkingMode">
            <a href="$Link" class="$LinkingMode" title="$MenuTitle">$MenuTitle</a>
            <% if $Children %>
                <% include SidebarNavChildren %>
            <% end_if %>
        </li>
    </ul>
<% end_loop %>
