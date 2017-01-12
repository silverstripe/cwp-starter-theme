<div class="container" role="contentinfo">
    <hr>
    <div class="row">
        <% if $Footer %>
            <ul class="nav nav-pills col-sm-6 col-xs-12">
                <% with $Footer %>
                    <% loop $Children %>
                        <li class="$LinkingMode<% if $LinkingMode = current %> active<% end_if %>">
                            <a href="$Link" class="$LinkingMode" title='$MenuTitle.XML'>
                                $MenuTitle.XML
                            </a>
                        </li>
                    <% end_loop %>
                <% end_with %>
            </ul>
        <% end_if %>

        <% if $SiteConfig.FacebookURL || $SiteConfig.TwitterUsername %>
            <div class="socialLinks <% if $Footer %>col-sm-6<% end_if %> col-xs-12 text-right" role="complementary">
                <% if $SiteConfig.TwitterUsername %>
                    <a href="http://www.twitter.com/$SiteConfig.TwitterUsername" title='<%t Footer.FollowOnTwitter "Follow us on Twitter" %>'>
                        <i class="fa fa-twitter" aria-hidden="true"></i><%t Footer.FollowOnTwitter "Follow us on Twitter" %>
                    </a>
                <% end_if %>

                <% if $SiteConfig.FacebookURL %>
                    <a href="http://www.facebook.com/$SiteConfig.FacebookURL" title='<%t Footer.FollowOnFacebook "Follow us on Facebook" %>'>
                        <i class="fa fa-facebook" aria-hidden="true"></i><%t Footer.FollowOnFacebook "Follow us on Facebook" %>
                    </a>
                <% end_if %>
            </div>
        <% end_if %>
    </div>

    <div class="row footer-logo">
        <div class="col-md-12">
            <% if $SiteConfig.FooterLogo %>
                <% if $SiteConfig.FooterLogoLink %>
                    <a href="$SiteConfig.FooterLogoLink" title='<%t Footer.GovAlt "newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" %>'>
                        <img src="$SiteConfig.FooterLogo.URL" width="210"<% if $SiteConfig.FooterLogoDescription %>
                             alt="$SiteConfig.FooterLogoDescription"
                             title="$SiteConfig.FooterLogoDescription"<% end_if %> />
                    </a>
                <% end_if %>
            <% else %>
                <a href="http://newzealand.govt.nz/" title='<%t Footer.GovAlt "newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" %>'>
                    <img src="$ThemeDir/images/newzealand-government-footer.png" width="210"
                         alt='<%t Footer.GovAlt "newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" %>'
                         title='<%t Footer.GovAlt "newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" %>'/>
                </a>
            <% end_if %>
        </div>
    </div>

    <div class="row footer-copyright">
        <div class="col-xs-12 text-center">
            <p>
                <small>$SiteConfig.Title &copy; $CurrentDatetime.Format(Y)</small>
            </p>
        </div>
    </div>
</div>
