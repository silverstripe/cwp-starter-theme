<div class="container site-header">
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
    <button type="button" class="navbar-toggle collapsed pull-right" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
        <span class="sr-only"><%t CWP.Header.Toggle "Toggle navigation" %></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <form class="form-inline hidden-xs header-search pull-right" action="/search">
        <% include HeaderSearch %>
    </form>
    <% include LanguageSelector %>
</div>
