<div class="container news_holder">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="page-header">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
        </div>
        
        <section class="<% if $AvailableMonths || not $FilteredUpdates %>col-md-7 col-md-offset-1<% else %>col-md-10 col-md-offset-1<% end_if %>">
            <% if $FilteredUpdates %>
                <% include FilteredUpdates %>
            <% else %>
                <article>
                    <p><%t CWP.FilteredUpdates.NoNews "No news" %></p>
                </article>
            <% end_if %>
        </section>

        $Form
        
        <aside class="col-md-3">
            <% if $UpdateTagsWithLinks %>
                <% include UpdateTags %>
            <% end_if %>

            <% include DateRange %>

            <% if $AvailableMonths %>
                <% include AvailableMonths %>
            <% end_if %>
        </aside>

    </div>
</div>

<% include PageUtilities %>
