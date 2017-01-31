<div class="content search-results">
    <div class="container">
        <section class="col-sm-10 col-md-offset-1">
            <div class="row">
                <div class="page-header">
                    <h1>$Title</h1>
                </div>
                $SearchForm
                <% if $SearchQuery %>
                    <div class="page-summary">
                        <p class="lead pull-left"><%t CWP.Search.ShowingResultsFor "Showing results for" %>
                            "$SearchQuery.XML"</p>
                        <% if $Results %>
                            <p class="text-muted pull-right text-right"><%t CWP.Search.DisplayingResultsTotal "Displaying results" %> $Limit
                                of $Total</p>
                        <% else %>
                            <div class="row search-results__no-result">
                                <div class="col-sm-12">
                                <p class="bg-warning">
                                    $SiteConfig.NoSearchResults
                                </p>
                                </div>
                            </div>
                        <% end_if %>
                    </div>

                    <% if $Total > 0 %>
                        <div class="row">
                            <div class="results col-sm-12">
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
                        </div>
                    <% end_if %>
                    <script type="text/javascript">
                        var searchQuery = {query: "$SearchQuery"};
                    </script>
                <% else %>
                    <div class="row search-results__empty-search">
                        <div class="col-sm-12">
                            <p class="bg-warning">
                                $SiteConfig.EmptySearch
                            </p>
                        </div>
                    </div>
                <% end_if %>
            </div>
        </section>
    </div>
    <% include PageUtilities %>
</div>
