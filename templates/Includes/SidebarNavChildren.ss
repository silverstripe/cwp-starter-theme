<ul class="nav">
    <% loop $Children %>
        <li class="$LinkingMode">
            <a href="$Link" class="$LinkingMode" title="$MenuTitle">$MenuTitle</a>
            <% if $Children %>
                <% include SidebarNavChildren %>
            <% end_if %>
        </li>
    <% end_loop %>
</ul>
