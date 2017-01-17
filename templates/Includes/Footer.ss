<div class="container" role="contentinfo">
    <% if $Footer || $SiteConfig.FacebookURL || $SiteConfig.TwitterUsername %>
        <nav class="row footer-nav" aria-label="Footer navigation">
            <% if $Footer %>
                <div class="footer-nav_links <% if $Footer %>col-sm-6<% end_if %> col-xs-12">
                    <% with $Footer %>
                        <% loop $Children %>
                            <a href="$Link" class="$LinkingMode <% if $LinkingMode = current %> active<% end_if %>" title='$MenuTitle.XML'>
                                $MenuTitle.XML
                            </a>
                        <% end_loop %>
                    <% end_with %>
                </div>
            <% end_if %>

            <% if $SiteConfig.FacebookURL || $SiteConfig.TwitterUsername %>
                <div class="footer-nav_links <% if $Footer %>col-sm-6<% end_if %> col-xs-12 text-right" role="complementary">
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
        </nav>
        <hr>
    <% end_if %>
    <div class="row footer-logo">
        <div class="col-md-6 col-xs-6 footer-copyright text-left">
            <p>
                <small>&copy; $CurrentDatetime.Format(Y) $SiteConfig.Title</small>
            </p>
        </div>
        <div class="col-md-6 col-xs-6 text-right">
            <% if $SiteConfig.FooterLogo %>
                <% if $SiteConfig.FooterLogoLink %>
                    <a href="$SiteConfig.FooterLogoLink" title='<%t CWP.Footer.GovAlt "newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" %>'>
                        <img src="$SiteConfig.FooterLogo.URL" width="210"<% if $SiteConfig.FooterLogoDescription %>
                             alt="$SiteConfig.FooterLogoDescription"
                             title="$SiteConfig.FooterLogoDescription"<% end_if %> />
                    </a>
                <% end_if %>
            <% else %>
                <a href="http://newzealand.govt.nz/" title='<%t CWP.Footer.GovAlt "newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" %>'>
                    <img src="$ThemeDir/images/newzealand-government-footer.png" width="210"
                         alt='<%t CWP.Footer.GovAlt "newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" %>'
                         title='<%t CWP.Footer.GovAlt "newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" %>'/>
                </a>
            <% end_if %>
        </div>
    </div>
</div>
