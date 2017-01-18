<div class="container site-header">
    <div class="row">
        <div class="col-md-12">
            <div class="site-header-brand">
                <a title="<%t CWP.Header.Title "Go to home page" %>" class="site-header-brand-link-default" href="$BaseHref">
                    <img
                        <% if $SiteConfig.Logo %>
                            src="$SiteConfig.Logo.URL" width="$SiteConfig.Logo.Width" height="$SiteConfig.Logo.Height"
                        <% else %>
                            src="$ThemeDir/dist/images/logo.png" width="119" height="119"
                        <% end_if %>
                        alt="<%t CWP.Header.Logo "My Department Logo" %>"
                        aria-hidden="true" />
                    <span>$SiteConfig.Title</span>
                </a>
            </div>

            <% if $AvailableTranslations %>
                <ul id="lang" class="translations">
                    <% loop $AvailableTranslations %>
                        <li>
                            <a href="$Link" lang="$LangName" hreflang="$LangName" class="$FirstLast <% if $Current %>current <% end_if %>">
                                $LangName
                            </a>
                        </li>
                    <% end_loop %>
                </ul>
            <% end_if %>

        </div>
    </div>
</div>
