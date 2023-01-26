<% if $CommentsEnabled %>
    <div id="$CommentHolderID" class="comments-holder-container">
        <h2 class="h3 comments-heading"><%t CommentsInterface_ss.POSTCOM 'Post your comment' %></h2>

        <% if $AddCommentForm %>
            <% if $canPostComment %>
                <% if $ModeratedSubmitted %>
                    <p id="moderated" class="message good" tabindex="-1"><%t CommentsInterface_ss.AWAITINGMODERATION 'Your comment has been submitted and is now awaiting moderation.' %></p>
                <% end_if %>
                $AddCommentForm
            <% else %>
                <p><%t CommentsInterface_ss.COMMENTLOGINERROR 'You cannot post comments until you have logged in' %><% if $PostingRequiredPermission %>,<%t CommentsInterface_ss.COMMENTPERMISSIONERROR 'and that you have an appropriate permission level' %><% end_if %>.
                    <a href="Security/login?BackURL={$Parent.Link}" title="<%t CommentsInterface_ss.LOGINTOPOSTCOMMENT 'Login to post a comment' %>"><%t CommentsInterface_ss.COMMENTPOSTLOGIN 'Login Here' %></a>.
                </p>
            <% end_if %>
        <% else %>
            <p><%t CommentsInterface_ss.COMMENTSDISABLED 'Posting comments has been disabled' %>.</p>
        <% end_if %>
        <hr />
        <h2 class="h3 mt-2"><%t CommentsInterface_ss.COMMENTS 'Comments' %></h2>

        <div class="comments-holder">
            <% if $PagedComments %>
                <ul class="comments-list list-unstyled root-level">
                    <% loop $PagedComments %>
                        <li class="comment $EvenOdd<% if $FirstLast %> $FirstLast <% end_if %> $SpamClass">
                            <% include CommentsInterface_singlecomment %>
                        </li>
                    <% end_loop %>
                </ul>
                <% with $PagedComments %>
                    <% include CommentPagination %>
                <% end_with %>
            <% end_if %>

            <p class="no-comments-yet"<% if $PagedComments.Count %> style='display: none' <% end_if %> ><%t CommentsInterface_ss.NOCOMMENTSYET 'No one has commented on this page yet.' %></p>

        </div>

        <% if $DeleteAllLink %>
            <p class="delete-comments">
                <a href="$DeleteAllLink"><%t CommentsInterface_ss.DELETEALLCOMMENTS 'Delete all comments on this page' %></a>
            </p>
        <% end_if %>

        <p class="commenting-rss-feed">
            <a href="$CommentRSSLinkPage"><%t CommentsInterface_ss.RSSFEEDCOMMENTS 'RSS feed for comments on this page' %></a>
            <a href="$CommentRSSLink"><%t CommentsInterface_ss.RSSFEEDALLCOMMENTS 'RSS feed for all comments' %></a>
        </p>
    </div>
<% end_if %>
