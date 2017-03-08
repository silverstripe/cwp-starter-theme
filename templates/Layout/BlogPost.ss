<% require themedCSS('blog', 'blog') %>

<div class="blog-entry container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="page-header">
                $Breadcrumbs
                <h1>$Title</h1>
            </div>
        </div>

         <section class="<% if $SideBarView %>col-md-7 col-md-offset-1<% else %>col-md-10 col-md-offset-1<% end_if %>">
            <article class="blog-post-article">
                <% if $FeaturedImage %>
                    <p class="post-image">$FeaturedImage.setWidth(795)</p>
                <% end_if %>

                <div class="content">$Content</div>

                <% include EntryMeta %>

                $Form
                $CommentsForm
            </article>
       </section>

        <% include BlogSideBar %>

    </div>
</div>
<% include PageUtilities %>
