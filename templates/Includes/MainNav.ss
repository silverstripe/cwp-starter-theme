<div class="main-nav">
    <nav class="navbar navbar-default" aria-label="main navigation">
        <div class="container">
            <div class="row">
                <div class="collapse navbar-collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <% loop Menu(1) %>
                            <li class="nav__item $FirstLast $LinkingMode<% if $LinkingMode = current %> active<% end_if %><% if $Children %> dropdown <% end_if %>">
                                <a href="$Link" <% if $LinkingMode = current %>aria-label="current page"<% end_if %> class="$LinkingMode<% if $Children %> dropdown-toggle" data-toggle="dropdown<% end_if %>">
                                    $MenuTitle.XML <% if $Children %><span class="caret"></span><% end_if %>
                                </a>
                                <% if $Children %>
                                    <ul class="dropdown-menu">
                                        <% loop $Children %>
                                            <li class="dropdown-menu__item <% if $LinkingMode = current %>active <% end_if %>">
                                                <a href="$Link" <% if $LinkingMode = current %>aria-label="current page" <% end_if %>title="$MenuTitle.XML">$MenuTitle.XML</a>
                                            </li>
                                        <% end_loop %>
                                    </ul>
                                <% end_if %>
                            </li>
                        <% end_loop %>
                    </ul>
                    <form class="navbar-form navbar-left visible-xs" action="/search">
                        <% include HeaderSearch %>
                    </form>
                </div>
            </div>
        </div>
    </nav>
</div>
