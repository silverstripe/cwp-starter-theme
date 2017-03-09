<% if $Tags || $Categories %>
    <div class="blog-entry-tags">
        <% if $Tags %>
            <p class="entry-tags">
                <%-- If you are using the category list below, uncomment the "Tags:" label here --%>
                <%--<%t BlogEntry.Tags "Tags:" %>--%>
                <% loop $Tags %><a href="$Link" title="$Title.ATT" class="label label-default">$Title</a><% end_loop %>
            </p>
        <% end_if %>

        <%-- You can re-enable category display by uncommenting this block of code --%>
        <%--
        <% if $Categories %>
            <p class="entry-categories">
                <%t BlogEntry.Categories "Categories:" %> <% loop $Categories %><a href="$Link" title="$Title.ATT" class="label label-primary">$Title</a><% end_loop %>
            </p>
        <% end_if %>
         --%>
    </div>
<% end_if %>
