<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="page-header">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
            <% include BlogMemberDetails %>
        </div>
    </div>

    <div class="row">
        <section class="<% if $SideBarView %>col-md-7<% else %>col-md-10<% end_if %> col-md-offset-1 resultsList">
            <% include BlogPostPaginatedList %>
            $Form
            <% include RelatedPages %>
            $CommentsForm
        </section>

        <% include BlogSideBar %>
    </div>
</div>

<% include PageUtilities %>
