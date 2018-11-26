<% if $Tags %>
    <div class="blog-tags-widget blog-tag-cloud mb-4" role="tablist">
        <% loop $Tags %>
            <a role="presentation" href="$Link" class="label label-primary blog-tag-count blog-tag-count-{$NormalizedTag}">
                $TagName.XML
            </a>
        <% end_loop %>
    </ul>
<% end_if %>
