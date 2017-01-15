<div class="news_tags">
    <h3 class="h4"><%t CWP.NewsHolder.FilterTag "Filter by tag" %></h3>
    <nav role="navigation">
        <p>
            <% loop $UpdateTagsWithLinks %>
                <a href="$Link" class="label <% if $Top.CurrentTag.ID==$ID %>label-success<% else %>label-primary<% end_if %>" title='<%t CWP.NewsHolder.ViewItemsTagged "View items tagged {Name}" Name=$Name %>'>$Name</a>
            <% end_loop %>
        </p>
        <% if $CurrentTag %>
            <p class="small"><a href="$AllTagsLink" title='<%t CWP.NewsHolder.ViewAllTags "All tags"%>'>
                <%t CWP.NewsHolder.ViewAllTags "View all tags" %>
            </a></p>
        <% end_if %>
    </nav>
</div>
