<% if $MoreThanOnePage %>
    <div class="pagination-container">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <% if $NotFirstPage %>
                <li>
                    <a class="prev" aria-label="Previous" href="$PrevLink" title='<%t CWP_Pagination.PrevPage "View previous page of results" %>'>
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <% end_if %>
                <% loop $PaginationSummary(4) %>
                    <% if $CurrentBool %>
                        <li class="active">
                            <a>
                                <span>$PageNum <span class="sr-only"><%t CWP_Pagination.CURRENT_LABEL "(current)" %></span></span>
                            </a>
                        </li>
                    <% else %>
                        <% if $PageNum %>
                            <li>
                                <a href="$Link"
                                    title='<%t CWP_Pagination.PageNum "View page {PageNum} of results" PageNum=$PageNum %>'
                                    class="go-to-page">
                                    $PageNum
                                </a>
                            </li>
                        <% else %>
                            <li class="disabled">
                                <span>
                                    <span aria-hidden="true">&hellip;</span>
                                </span>
                            </li>
                        <% end_if %>
                    <% end_if %>
                <% end_loop %>
                <% if $NotLastPage %>
                <li>
                    <a class="next" aria-label="Next" href="$NextLink" title='<%t CWP_Pagination.NextPage "View next page of results" %>'>
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
                <% end_if %>
            </ul>
        </nav>
    </div>
<% end_if %>
