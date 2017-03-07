<% if $MoreThanOnePage %>
    <div class="pagination-container">
        <nav aria-label="<%t CommentPagination.PAGE_NAVIGATION "Page navigation" %>">
            <ul class="pagination">
                <% if $PrevLink %>
                    <li>
                        <a href="$PrevLink.ATT" class="previous">&laquo; <%t CommentsInterface_ss.PREV 'previous' %></a>
                    </li>
                <% end_if %>

                <% if $Pages %>
                    <% loop $Pages %>
                        <% if $CurrentBool %>
                            <li class="active">
                                <a><strong>$PageNum</strong></a>
                            </li>
                        <% else %>
                            <li>
                                <a href="$Link.ATT">$PageNum</a>
                            </li>
                        <% end_if %>
                    <% end_loop %>
                <% end_if %>

                <% if $NextLink %>
                    <li>
                        <a href="$NextLink.ATT" class="next"><%t CommentsInterface_ss.NEXT 'next' %> &raquo;</a>
                    </li>
                <% end_if %>
            </ul>
        </nav>
    </div>
<% end_if %>
