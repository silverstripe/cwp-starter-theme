<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="page-header">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
            <% include NewsFilterContext %>
        </div>

        <section class="<% if $AvailableMonths || not $FilteredUpdates %>col-md-7 col-md-offset-1<% else %>col-md-10 col-md-offset-1<% end_if %>">
            <% if $FilteredUpdates %>
                <% include FilteredUpdates ControllerName=$ClassName %>
            <% else %>
                <article>
                    <p><%t CWP.FilteredUpdates.NoEvents "No Events" %></p>
                </article>
            <% end_if %>
        </section>

        <aside class="col-md-3 sidebar">
            <h2 class="sr-only"><%t CWP_NewsEvents.FILTERS "Filters" %></h2>
            <% if $UpdateTagsWithLinks %>
                <% include UpdateTags %>
            <% end_if %>

            <% include DateRange %>

            <% if $AvailableMonths %>
                <% include AvailableMonths ControllerName=$ClassName %>
            <% end_if %>
        </aside>

    </div>
</div>

<% include PageUtilities %>
