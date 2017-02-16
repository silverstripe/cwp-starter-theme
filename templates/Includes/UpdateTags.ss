<div class="news-events_tags">
    <h3 class="h4"><%t CWP.Events_News.FilterTag "Filter by tag" %></h3>
    <nav role="navigation">
        <p>
            <% loop $UpdateTagsWithLinks %>
                <a href="$Link" class="label <% if $Top.CurrentTag.ID==$ID %>label-success<% else %>label-primary<% end_if %>" title='<%t CWP.Events_Newsr.ViewItemsTagged "View items tagged {Name}" Name=$Name %>'>$Name</a>
            <% end_loop %>
        </p>
        <% if $CurrentTag %>
            <p class="small"><a href="$AllTagsLink" title='<%t CWP.Events_News.ViewAllTags "All tags"%>'>
                <%t CWP.Events_News.ViewAllTags "View all tags" %>
            </a></p>
        <% end_if %>
    </nav>
</div>
