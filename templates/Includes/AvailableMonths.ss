<div class="news-events_archive">
    
    <h3 class="h4"><%t CWP.AvailableMonths.Title "Archive" %></h3>
    <h3 class="h4 sr-only"><%t CWP.AvailableMonths.Title "Archive" %>:</h3>

    <% loop $Availablemonths %>
        <h5 class="pull-left"> {$YearName}: </h5>
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
            <% if $ControllerName == "EventHolder" %>
                 <p><a class="small" title="<%t CWP.EventHolder.ShowAllEvents "Show all events" %>" href="$Link"><%t CWP.EventHolder.ShowAllEvents "Show all upcoming events" %></a></p>
            <% else_if $ControllerName == "NewsHolder" %>
                 <p><a class="small" title="<%t CWP.NewsHolder.ShowAllNews "Show all news" %>" href="$Link"><%t CWP.NewsHolder.ShowAllNews "Show all news" %></a></p>
            <% end_if %>
        <% end_if %>
    <% end_if %>

</div>

