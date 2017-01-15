<div class="container">
    <nav class="navbar navbar-default navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
        
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#simple-navbar-collapse" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <div class="collapse navbar-collapse" id="simple-navbar-collapse">
                <ul class="nav navbar-nav navbar-left">
                    <% loop Menu(1) %>
                        <li class="nav__item $FirstLast $LinkingMode<% if $LinkingMode = current %> active<% end_if %><% if $Children %> dropdown <% end_if %>">
                            <a href="$Link" class="$LinkingMode<% if $Children %> dropdown-toggle" data-toggle="dropdown<% end_if %>">
                                $MenuTitle.XML <% if $Children %><span class="caret"></span><% end_if %>
                            </a>
                            <% if $Children %>
                                <ul class="dropdown-menu">
                                    <% loop $Children %>
                                        <li class="dropdown-menu__item">
                                            <a href="$Link">$MenuTitle.XML</a>
                                        </li>
                                        <li role="separator" class="divider"></li>
                                    <% end_loop %>
                                </ul>
                            <% end_if %>
                        </li>
                    <% end_loop %>
                </ul>
                
                $SearchForm
            </div>
        </div>
    </nav>
</div>

