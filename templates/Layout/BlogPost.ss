<% require themedCSS('blog', 'blog') %>

<div class="blog-entry container">
    <div class="row">
        <div class="page-header col-md-10 col-md-offset-1">
            $Breadcrumbs
            <h1>$Title</h1>
        </div>
    </div>
    <div class="row">
       <div class="<% if $SideBarView %>col-md-7 col-md-offset-1<% else %>col-md-10 col-md-offset-1<% end_if %>">
            <article class="blog-post-article">
                <% if $FeaturedImage %>
                    <p class="post-image">$FeaturedImage.setWidth(795)</p>
                <% end_if %>

                <div class="content">$Content</div>

                <% include EntryMeta %>
            </article>

            $Form
            $CommentsForm
       </div>
       <% include BlogSideBar %>
    </div>
</div>
<% include PageUtilities %>
