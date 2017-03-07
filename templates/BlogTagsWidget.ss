<% if $Tags %>
    <ul class="tagcloud list-inline">
        <% loop $Tags %>
            <li class="tagcloud-{$ClassName}">
                <a href="$Link"
                    title="<%t BlogTagsWidget.LINK_TEXT 'View {count} blog posts tagged {tag}' count=$BlogPosts.Count tag=$Title.ATT %>"
                    class="label label-default">
                    $Title.XML
                </a>
            </li>
        <% end_loop %>
    </ul>
<% end_if %>
