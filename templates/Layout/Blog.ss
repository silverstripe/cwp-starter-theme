<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="page-header">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
        </div>

        <section class="<% if $SideBarView %>col-md-7<% else %>col-md-10<% end_if %> col-md-offset-1">
            <div class="blog-main" role="main">
                <div class="clearfix">
                <% if $Content.RichLinks %>
                    $Content.RichLinks
                <% else %>
                    $Content
                <% end_if %>
                </div>
                <% include BlogPostPaginatedList %>
                $Form
                <% include RelatedPages %>
                $CommentsForm
            </div>
        </section>

        <% include BlogSideBar %>

    </div>
</div>

<% include PageUtilities %>
