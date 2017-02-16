<% if $QuickLinks %>
    <div class="col-md-4 quicklinks">
        <h2><%t CWP.Home.Quicklinks.Title "Quicklinks" %></h2>
        <ul class="quicklink-list">
            <% loop $QuickLinks %>
                <li class="quicklink-list__item">
                    <% if $ExternalLink %>
                        <a href="$ExternalLink" class="quicklink-list__item-link">
                    <% else %>
                        <a href="$InternalLink.Link" class="quicklink-list__item-link">
                    <% end_if %>
                        $Title
                        </a>
                </li>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>
