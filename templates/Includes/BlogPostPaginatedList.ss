<% if $PaginatedList %>
    <% if $CurrentProfile %>
        <h2 class="blog-post-heading"><%t BlogPostPaginatedList.POSTS_BY 'Posts by {firstname} {lastname} for {title}' firstname=$CurrentProfile.FirstName lastname=$CurrentProfile.Surname title=$Title %></h2>
    <% end_if %>
    <% loop $PaginatedList %>
        <article class="blog-entry $EvenOdd">
            <% include BlogSummary %>
            <% if not $Last %>
                <hr>
            <% end_if %>
        </article>
    <% end_loop %>
    <% with $PaginatedList %>
        <% include Pagination %>
    <% end_with %>
<% else %>
    <p>There are no blog posts</p>
<% end_if %>
