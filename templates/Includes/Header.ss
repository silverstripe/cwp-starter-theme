<div class="container site-header">
    <% include SkipLinks %>
    <div class="site-header-brand">
        <a title="<%t CWP.Header.Title "Go to Home Page" %>" class="site-header-brand-link-default" href="$BaseHref">
            <span>$SiteConfig.Title</span>
        </a>
        <% if $SiteConfig.Tagline %>
            <span class="site-header-brand-tagline">$SiteConfig.Tagline</span>
        <% end_if %>
    </div>
    <button type="button" class="navbar-toggle collapsed pull-right" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false">
        <span class="sr-only"><%t CWP.Header.Toggle "Toggle navigation" %></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <% include HeaderSearch %>
    <% include LanguageSelector %>
</div>
