<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="page-header">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
        </div>

        <section class="<% if $SideBarView %>col-lg-8<% else %>col-lg-12<% end_if %>">
            <div class="blog-main" role="main">
                <div class="clearfix blog-holder__content">
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
