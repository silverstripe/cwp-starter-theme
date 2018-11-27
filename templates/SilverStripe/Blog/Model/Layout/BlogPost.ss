<div class="blog-entry container">
    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <div class="page-header border-bottom pb-3 mt-5 mb-4">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
        </div>

         <section class="<% if $SideBarView %>col-lg-7 offset-lg-1<% else %>col-lg-10 offset-lg-1<% end_if %>">
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
