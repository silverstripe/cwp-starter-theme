<% if $MoreThanOnePage %>
    <div class="pagination-container">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <% if $NotFirstPage %>
                <li>
                    <a class="prev" aria-label="Previous" href="$PrevLink" title='<%t CWP.Pagination.PrevPage "View previous page of results" %>'>
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <% end_if %>
                <% loop $PaginationSummary(4) %>
                    <% if $CurrentBool %>
                        <li class="active">
                            <a>
                                <span>$PageNum <span class="sr-only">(current)</span></span>
                            </a> 
                        </li>
                        <% else %>
                        <li>
                            <a href="$Link" title='<%t CWP.Pagination.PageNum "Viewing page {PageNum} of results" PageNum=$PageNum %>' class="go-to-page">$PageNum</a>
                        </li>
                    <% end_if %>
                <% end_loop %>
                <% if $NotLastPage %>
                <li>
                    <a class="next" aria-label="Next" href="$NextLink" title='<%t CWP.Pagination.NextPage "View next page of results" %>'>
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
                <% end_if %>
            </ul>
        </nav>
    </div>
<% end_if %> 
