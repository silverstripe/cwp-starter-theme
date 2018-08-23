<div class="main-nav">
    <nav class="navbar navbar-default" aria-label="<%t CWP_Theme.MAIN_NAVIGATION 'Main navigation' %>">
        <div class="container">
            <div class="row">
                <div class="collapse navbar-collapse" id="navbar-collapse">
                  <form class="navbar-form visible-xs" action="/search/SearchForm">
                      <% include HeaderSearch %>
                  </form>
                  <ul class="nav navbar-nav" role="menubar">
                      <% loop Menu(1) %>
                          <li role="menuitem" class="nav-item $FirstLast $LinkingMode<% if $LinkingMode = current %> active<% end_if %><% if $Children %> dropdown <% end_if %>">

                              <a href="$Link" <% if $LinkingMode = current %>aria-label="current page"<% end_if %> class="$LinkingMode">$MenuTitle.XML</a>

                              <% if $Children %>
                                  <button class="btn btn-link pull-right navbar-touch-caret" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown">
                                      <span class="sr-only"><%t CWP_Theme.DISPLAY_SUBMENU_PAGES "Display {count} submenu pages" count=$MenuTitle.XML %></span>
                                      <i class="fa fa-caret-down" aria-hidden="true"></i>
                                  </button>

                                  <ul class="dropdown-menu" role="menu" aria-hidden="true">
                                      <% loop $Children %>
                                          <li role="menuitem" class="dropdown-menu-item <% if $LinkingMode = current %>active <% end_if %>">
                                              <a role="menuitem" href="$Link" <% if $LinkingMode = current %>aria-label="current page" <% end_if %>>$MenuTitle.XML</a>
                                          </li>
                                      <% end_loop %>
                                  </ul>
                              <% end_if %>
                          </li>
                      <% end_loop %>
                  </ul>
                </div>
            </div>
        </div>
    </nav>
</div>
