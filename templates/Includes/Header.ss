<div class="container site-header">
    <div class="row">
        <div class="col-md-12">

            <% if $ClassName == "HomePage" %>
              <h1 class="site-header-brand">
            <% else %>
              <div class="site-header_brand">
            <% end_if %>

            <% if $SiteConfig.Logo %>
                <a title="<%t CWP.Header.Title "Return to homepage" %>" class="site-header_brand_link" href="$BaseHref">
                    <img src="$SiteConfig.Logo.URL" width="$SiteConfig.Logo.Width" height="$SiteConfig.Logo.Height" alt="$SiteConfig.Title logo" title="$SiteConfig.Title" />
                    <span>$SiteConfig.Title</span>
                </a>
            <% else %>
               <a title="<%t CWP.Header.Title "Return to homepage" %>" class="site-header_brand_link_default" href="$BaseHref">
                    <img src="$ThemeDir/dist/images/logo.png" width="119" height="119" title="<%t CWP.Header.LogoTitle "My Department Logo" %>" alt="<%t CWP.Header.Logo "My Department Logo" %>"/>
                    <span>
                        $SiteConfig.Title
                    </span>
                </a>
            <% end_if %>

            <% if $ClassName == "HomePage" %>
              </h1>
            <% else %>
              </div>
            <% end_if %>

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

