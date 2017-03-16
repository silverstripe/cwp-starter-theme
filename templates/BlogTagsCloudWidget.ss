<% if $Tags %>
    <div class="blog-tags-widget blog-tag-cloud" role="tablist">
        <% loop $Tags %>
            <a role="presentation" href="$Link" title="$TagName" class="label label-primary blog-tag-count blog-tag-count-{$NormalizedTag}">
                $TagName
            </a>
        <% end_loop %>
    </ul>
<% end_if %>
