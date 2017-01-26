<div class="container">
    <div class="row">
        <section class="col-md-10 col-md-offset-1">
            <div class="page-header">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
        </section>
    </div>
    <div class="row">
        <section class="<% if Menu(2) %>col-md-7 col-md-offset-1<% else %>col-md-10 col-md-offset-1<% end_if %>">
            $Content.RichLinks
            $Form
            <% include RelatedPages %>
            $CommentsForm
        </section>
        <% if Menu(2) %>
            <aside class="col-md-3">
                <% include SidebarNav %>
            </aside>
        <% end_if %>
    </div>
</div>
<% include PageUtilities %>
