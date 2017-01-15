<% if $RelatedPages %>
    <h2><%t CWP.RelatedPages.Title "Related pages" %></h2>
    <ul>
        <% loop $RelatedPages %>
            <li><a href="$Link" title="$Title">$Title</a></li>
        <% end_loop %>
    </ul>
<% end_if %>
