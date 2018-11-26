<nav id="pageNav" role="navigation" class="page-sidebar-widget">
    <ul class="nav flex-column">
    <% loop $Children %>
        <li class="nav-item $LinkingMode<% if not $Last %> mb-4<% end_if %>">
            <a class="nav-link" href="$Link" class="$LinkingMode">$MenuTitle</a>
        </li>
    <% end_loop %>
    </ul>
</nav>
