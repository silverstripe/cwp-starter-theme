<div class="container">
    <div class="row">
        <section class="col-lg-12">
            <div class="page-header border-bottom pb-3 mt-5 mb-4">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
        </section>
    </div>
    <div class="row">
        <section class="col-lg-12">
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
