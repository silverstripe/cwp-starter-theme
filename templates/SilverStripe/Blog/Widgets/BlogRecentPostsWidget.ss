<% if $Posts %>
    <ul class="blogposts list-unstyled mb-4">
        <% loop $Posts %>
            <li class="blogposts-{$Class}">
                <a href="$Link">
                    $Title.XML
                </a>
            </li>
        <% end_loop %>
    </ul>
<% end_if %>
