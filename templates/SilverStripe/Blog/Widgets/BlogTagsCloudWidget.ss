<% if $Tags %>
    <div class="blog-tags-widget blog-tag-cloud" role="tablist">
        <% loop $Tags %>
            <a role="presentation" href="$Link" class="badge badge-primary rounded blog-tag-count blog-tag-count-{$NormalizedTag}">
                $TagName.XML
            </a>
        <% end_loop %>
    </ul>
<% end_if %>
