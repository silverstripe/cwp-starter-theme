<div class="container">
    <div class="row">
        <div class="col-lg-8<% if not $SideBarView || not $SideBarView.Widgets %> offset-lg-2<% end_if %>">
            <div class="page-header">
                $Breadcrumbs
                <h1 class="h2">$Title</h1>
            </div>
            <% include SilverStripe\\Blog\\MemberDetails %>
        </div>
    </div>

    <div class="row">
        <section class="col-lg-8<% if not $SideBarView || not $SideBarView.Widgets %> offset-lg-2<% end_if %> resultsList">
            <% include BlogPostPaginatedList %>
            $Form
            <% include RelatedPages %>
            $CommentsForm
        </section>

        <% include SilverStripe\\Blog\\BlogSideBar %>
    </div>
</div>

<% include PageUtilities %>
