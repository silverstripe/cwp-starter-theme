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
                        <p class="lead pull-left"><%t CWP.Search.ShowingResultsFor "Showing results for" %> "$SearchQuery"</p>
                        <% if $Results %>
                        <p class="text-muted pull-right text-right"><%t CWP.Search.DisplayingPageTotal "Displaying page" %> $Limit of $Total</p>
                        <% else %>
                        $SiteConfig.NoSearchResults
                        <% end_if %>
                    </div>

                    <% if $Results %>
                    <div class="row">
                        <div class="results col-sm-12">
                            <% loop $Results %>
                            <article class="result">
                                <header>
                                    <h1 class="h3">
                                        <a href="$Link" title="$Title">$Title</a>
                                    </h1>
                                </header>
                                $Content
                            </article>
                            <% end_loop %>
                        </div>
                        <% with $Results.Matches %>
                        <% include Pagination %>
                        <% end_with %>
                    </div>
                    <% end_if %>

                <% else %>
                <div class="page-summary">
                    $SiteConfig.EmptySearch
                </div>
                <% end_if %>
            </div>
        </section>
    </div>
</div>
