<div class="container">

    <% if $SiteConfig.FacebookURL || $SiteConfig.TwitterUsername %>
        <div class="footer_nav-links footer_social-links" role="complementary">
            <% if $SiteConfig.TwitterUsername %>
                <a href="http://www.twitter.com/$SiteConfig.TwitterUsername" title='<%t CWP.Footer.FollowOnTwitter "Follow us on Twitter" %>'>
                    <%t CWP.Footer.FollowOnTwitter "Follow us on Twitter" %></a>
            <% end_if %>

            <% if $SiteConfig.FacebookURL %>
                <a href="http://www.facebook.com/$SiteConfig.FacebookURL" title='<%t CWP.Footer.FollowOnFacebook "Follow us on Facebook" %>'>
                    <%t CWP.Footer.FollowOnFacebook "Follow us on Facebook" %></a>
            <% end_if %>
        </div>
    <% end_if %>

    <% if $Footer.Children %>
        <nav class="footer_nav-links" aria-label="Footer navigation">
            <% loop $Footer.Children %>
                <a href="$Link" class="$LinkingMode <% if $LinkingMode = current %> active<% end_if %>">
                    $MenuTitle.XML
                </a>
            <% end_loop %>
        </nav>
    <% end_if %>

    <hr>
    <a class="footer_govt-logo"
    <% if $SiteConfig.FooterLogoLink %>
        href="$SiteConfig.FooterLogoLink"
    <% else %>
        href="http://newzealand.govt.nz/"
    <% end_if %>
    >
        <img
        <% if $SiteConfig.FooterLogo %>
            src="$SiteConfig.FooterLogo.URL"
        <% else %>
            src="$ThemeDir/images/newzealand-government-footer.png" width="210"
        <% end_if %>

        <% if $SiteConfig.FooterLogoDescription %>
            alt="$SiteConfig.FooterLogoDescription"
        <% else %>
            alt="<%t CWP.Footer.GovAlt "newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" %>"
        <% end_if %>
        />
    </a>

    <p>
        <small>&copy; $CurrentDatetime.Format(Y) $SiteConfig.Title</small>
    </p>
</div>
