<div class="container">
    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <div class="page-header border-bottom pb-3 mt-5 mb-4">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
            <% include SilverStripe\\Blog\\MemberDetails %>
        </div>
    </div>

    <div class="row">
        <section class="<% if $SideBarView %>col-lg-7<% else %>col-lg-10<% end_if %> offset-lg-1 resultsList">
            <% include BlogPostPaginatedList %>
            $Form
            <% include RelatedPages %>
            $CommentsForm
        </section>

        <% include SilverStripe\\Blog\\BlogSideBar %>
    </div>
</div>

<% include PageUtilities %>
