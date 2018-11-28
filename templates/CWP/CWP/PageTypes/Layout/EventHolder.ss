<div class="container">
    <div class="row">
        <div class="col-lg-10 offset-lg-1 mb-5">
            <div class="page-header border-bottom pb-3 mt-5 mb-4">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
            <% if $Content.RichLinks %>
                $Content.RichLinks
            <% else %>
                $Content
            <% end_if %>
            <% include NewsFilterContext %>
        </div>

        <section class="<% if $AvailableMonths || not $FilteredUpdates %>col-lg-7 offset-lg-1<% else %>col-lg-10 offset-lg-1<% end_if %>">
            <% if $FilteredUpdates %>
                <% include FilteredUpdates ControllerName=$ClassName %>
            <% else %>
                <article>
                    <p><%t CWP\\CWP\\PageTypes\\EventHolder.NoEvents "No Events" %></p>
                </article>
            <% end_if %>
        </section>

        <aside class="col-lg-3 sidebar">
            <h2 class="sr-only"><%t CWP\\CWP\\PageTypes\\EventHolder.FILTERS "Filters" %></h2>
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
