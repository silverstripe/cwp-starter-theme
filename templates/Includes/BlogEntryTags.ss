<% if $Tags || $Categories %>
    <div class="blog-entry-tags">
        <% if $Tags %>
            <p class="entry-tags">
                <%t BlogEntry.Tags "Tags:" %> <% loop $Tags %><a href="$Link" title="$Title.ATT" class="label label-default">$Title</a><% end_loop %>
            </p>
        <% end_if %>

        <% if $Categories %>
            <p class="entry-categories">
                <%t BlogEntry.Categories "Categories:" %> <% loop $Categories %><a href="$Link" title="$Title.ATT" class="label label-primary">$Title</a><% end_loop %>
            </p>
        <% end_if %>
    </div>
<% end_if %>
