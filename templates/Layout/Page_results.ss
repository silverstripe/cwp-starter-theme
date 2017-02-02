<div class="content search-results">
    <div class="container">
        <div class="row">
            <section class="col-md-10 col-md-offset-1">
                <div class="page-header">
                    <h1>$Title</h1>
                </div>
                $SearchForm
                <% if $SearchQuery %>
                    <div class="page-summary clearfix">
                        <p class="lead pull-left"><%t CWP.Search.ShowingResultsFor "Showing results for" %>
                            "$SearchQuery.XML"</p>
                        <% if $Results %>
                            <p class="text-muted pull-right text-right">
                                <%t CWP.Search.Pages "Displaying Page {CurrentPage} of {TotalPages}" CurrentPage=$Results.CurrentPage TotalPages=$Results.TotalPages %>
                            </p>
                        <% else %>
                            <div class="row search-results__no-result">
                                <div class="col-sm-12">
                                    <div class="bg-warning" role="alert">
                                        $SiteConfig.NoSearchResults
                                    </div>
                                </div>
                            </div>
                        <% end_if %>
                    </div>

                    <% if $Total > 0 %>
                        <div class="results">
                            <% loop $Results %>
                                <article class="result">
                                    <header>
                                        <h1 class="h3">
                                            <a href="$Link" title="$Title">$Title</a>
                                        </h1>
                                    </header>
                                    $Content.Summary
                                </article>
                            <% end_loop %>
                        </div>
                        <% with $Results %>
                            <% include Pagination %>
                        <% end_with %>
                    <% end_if %>
                    <script type="text/javascript">
                        var searchQuery = {query: "$SearchQuery"};
                    </script>
                <% else %>
                    <div class="row search-results__empty-search">
                        <div class="col-sm-12">
                            <div class="bg-warning" role="alert">
                                $SiteConfig.EmptySearch
                            </div>
                        </div>
                    </div>
                <% end_if %>
            </section>
        </div>
    </div>
    <% include PageUtilities %>
</div>
