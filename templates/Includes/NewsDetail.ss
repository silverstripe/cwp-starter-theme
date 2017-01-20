<h2 class="sr-only"><%t CWP.News.ITEMINFORMATION "News item information" %></h2>
<div class="news-details-aside">
    <dl>
        <% if $Terms %>
            <dt class="h4"><%t CWP.News.TAGS "Tags" %></dt>
            <dd>
                <% loop $Terms %>
                    <span class="label label-primary $FirstLast">$Name</span>
                <% end_loop %>
            </dd>
        <% end_if %>
    </dl>
</div>
<% include RelatedPages %>
