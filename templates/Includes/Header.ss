<div class="container site-header">
    <div class="row" <% if $SiteConfig.Logo %>style="line-height: {$SiteConfig.Logo.Height}px"<% end_if %>>
        <div class="col-xs-6">
            <div class="site-header-brand">
                <a title="<%t CWP.Header.Title "Go to home page" %>" class="site-header-brand-link-default" href="$BaseHref">
                    <% if $SiteConfig.Logo %>
                        <img
                            src="$SiteConfig.Logo.URL" width="$SiteConfig.Logo.Width" height="$SiteConfig.Logo.Height"
                            alt="<%t CWP.Header.Logo "My Department Logo" %>"
                            aria-hidden="true" />
                    <% end_if %>
                    <span>$SiteConfig.Title</span>
                </a>
            </div>
        </div>
        <div class="col-xs-6 text-right">
            <div class="push-down">
                <% include LanguageSelector %>
                <form class="form-inline hidden-xs header-search" action="/search">
                    <% include HeaderSearch %>
                </form>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
                    <span class="sr-only"><%t CWP.Header.Toggle "Toggle navigation" %></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
        </div>
    </div>
</div>
