<div class="blog-entry container">
    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <div class="page-header">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
        </div>

        <section class="<% if $SideBarView %>col-lg-7<% else %>col-lg-10<% end_if %> offset-lg-1">
            <article class="blog-post-article">
                <% if $FeaturedImage %>
                    <p class="post-image">$FeaturedImage.ScaleWidth(795)</p>
                <% end_if %>

                <div class="content">$Content</div>

                <% include SilverStripe\\Blog\\EntryMeta %>

                $Form
                $CommentsForm
            </article>
        </section>

        <% include SilverStripe\\Blog\\BlogSideBar %>

    </div>
</div>
<% include PageUtilities %>
