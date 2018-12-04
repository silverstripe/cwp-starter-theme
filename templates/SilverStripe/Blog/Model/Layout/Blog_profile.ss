<div class="container">
    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <div class="page-header">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
            <% include SilverStripe\\Blog\\MemberDetails %>
        </div>
    </div>

    <div class="row">
        <section class="<% if $SideBarView %>col-lg-8<% else %>col-lg-12<% end_if %>resultsList">
            <% include BlogPostPaginatedList %>
            $Form
            <% include RelatedPages %>
            $CommentsForm
        </section>

        <% include SilverStripe\\Blog\\BlogSideBar %>
    </div>
</div>

<% include PageUtilities %>
