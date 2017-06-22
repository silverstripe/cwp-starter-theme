<% if $Pages %>
    <nav role="navigation">
        <p class="sr-only" id="breadcrumbs-label"><%t SiteTree.BREADCRUMBSLABEL "You are here" %></p>
        <ol class="breadcrumb" aria-labelledby="breadcrumbs-label">
            <li>
                <a href="$BaseHref">
                    <%t SiteTree.DEFAULTHOMETITLE "Home" %>
                </a>
            </li>
            <% loop $Pages %>
                <% if $Last %>
                    <li class="active">$Title.XML</li>
                <% else %>
                    <li><a href="$Link">$MenuTitle.XML</a></li>
                <% end_if %>
            <% end_loop %>
        </ol>
    </nav>
<% end_if %>
