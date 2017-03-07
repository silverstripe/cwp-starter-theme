<div class="container">
    <div class="row">
        <div class="page-header col-md-10 col-md-offset-1">
            $Breadcrumbs
            <h1>$Title</h1>
        </div>
    </div>
    <div class="row">
        <div class="<% if $SideBarView %>col-md-7<% else %>col-md-10<% end_if %> col-md-offset-1 resultsList">
            <div id="blog-main" role="main">
                <div class="clearfix">
                    $Content.RichLinks
                </div>
                <% include BlogPostPaginatedList %>
                $Form
                <% include RelatedPages %>
                $CommentsForm
            </div>
        </div>
        <% include BlogSideBar %>
    </div>
</div>
<% include PageUtilities %>
