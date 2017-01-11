<div class="container">
    <div class="row">
        <section class="col-md-6">
            <% include Breadcrumbs %>
        </section>
        <section class="col-md-6">
            <% include ShareLinks %>
        </section>
    </div>
    <div class="row">
        <section class="<% if Menu(2) %>col-md-8<% else %>col-md-12<% end_if %>">
            <h1>$Title</h1>
            $Content.RichLinks
            $Form
            <% include RelatedPages %>
            $CommentsForm
        </section>
        <% if Menu(2) %>
            <aside class="col-md-4">
                <% include SidebarNav %>
            </aside>
        <% end_if %>
    </div>
</div>
