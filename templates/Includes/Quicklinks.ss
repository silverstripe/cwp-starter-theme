<% if $QuickLinks %>
    <div class="col-md-4 col-xs-12 quicklinks">
        <h2><%t CWP.Home.Quicklinks.Title "Quicklinks" %></h2>
        <ul class="quicklink-list list-unstyled">
            <% loop $QuickLinks %>
                <li class="quicklink-list__item">
                    <% if $ExternalLink %>
                        <a href="$ExternalLink" class="quicklink-list__item-link" title="$Title">
                    <% else %>
                        <a href="$InternalLink.Link" class="quicklink-list__item-link" title="$Title">
                    <% end_if %>
                        $Title
                    </a>
                </li>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>
