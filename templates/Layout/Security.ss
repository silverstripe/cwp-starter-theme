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
        <section class="col-md-10 col-md-offset-1">
            <% if $Content.RichLinks %>
            $Content.RichLinks
            <% else %>
            $Content
            <% end_if %>
            $Form
            <% include RelatedPages %>
            $CommentsForm
        </section>
    </div>
</div>
<% include PageUtilities %>
