<div class="container">
    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <div class="page-header border-bottom pb-3 mt-5 mb-4">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
        </div>

        <section class="<% if $SideBarView %>col-lg-7<% else %>col-lg-10<% end_if %> offset-lg-1">
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

        <% include SilverStripe\\Blog\\BlogSideBar %>

    </div>
</div>

<% include PageUtilities %>
