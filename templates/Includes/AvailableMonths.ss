<div class="news_archive">
    
    <h3 class="h4"><%t CWP.AvailableMonths.Title "Archive" %></h3>
    <h3 class="h4 sr-only"><%t CWP.NewsHolder.MonthFilter "Archive" %>:</h3>

    <% loop $Availablemonths %>
        <h5 class="pull-left">{$YearName}: </h5>
        <ul class="nav nav-pills">
            <% loop $Months %>
                <li <% if $Active %> class="active"<% end_if %> >
                    <a title="$MonthName" href="$MonthLink.XML">$MonthName</a>
                </li>
            <% end_loop %>
        </ul>   
    <% end_loop %>

    <% if $FilteredUpdates %>
        <% if $FilterDescription %>
            <p><a class="small" title="<%t CWP.NewsHolder.Link "Show all news" %>" href="$Link"><%t CWP.NewsHolder.Link "Show all news" %></a></p>
        <% end_if %>
    <% end_if %>

</div>