<nav id="pageNav" role="navigation" class="page-sidebar-widget">
    <ul class="nav nav-stacked nav-pills">
    <% loop $Children %>
        <li class="$LinkingMode">
            <a href="$Link" class="$LinkingMode">$MenuTitle</a>
        </li>
    <% end_loop %>
    </ul>
</nav>
