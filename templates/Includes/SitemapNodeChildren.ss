<% loop $Children %>
    <% if $ShowInMenus %>
        <li role="tab" data-pagetype="$ClassName" class="$FirstLast class-$ClassName">
            <% include SitemapNode %>
        </li>
    <% end_if %>
<% end_loop %>
