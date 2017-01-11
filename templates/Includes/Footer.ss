<div class="container" role="contentinfo">
    <hr>
    <h2 class="sr-only">Footer</h2>

    <% if $Footer %>
    <div class="row">
      <ul class="nav nav-pills col-sm-6 col-xs-12">
        <% with $Footer %>
          <% loop $Children %>
          <li class="$LinkingMode<% if $LinkingMode = current %> active<% end_if %>">
            <a href="$Link" class="$LinkingMode">
              $MenuTitle.XML
            </a>
          </li>
          <% end_loop %>
        <% end_with %>
      </ul>

      <% if $SiteConfig.FacebookURL || $SiteConfig.TwitterUsername %>
        <div class="socialLinks col-sm-6 col-xs-12 text-right" role="complementary">
          <% if $SiteConfig.TwitterUsername %>
            <a href="http://www.twitter.com/$SiteConfig.TwitterUsername"><i class="fa fa-twitter" aria-hidden="true"></i>Follow us on Twitter</a>
          <% end_if %>

          <% if $SiteConfig.FacebookURL %>
            <a href="http://www.facebook.com/$SiteConfig.FacebookURL"><i class="fa fa-facebook" aria-hidden="true"></i>Follow us on Facebook</a>
          <% end_if %>
        </div>
      <% end_if %>
    </div>
    <% end_if %>

    <div class="row footer-logo">
      <div class="col-md-12">
          <% if $SiteConfig.FooterLogo %>
            <% if $SiteConfig.FooterLogoLink %>
              <a href="$SiteConfig.FooterLogoLink">
                <img src="$SiteConfig.FooterLogo.URL" width="210"<% if $SiteConfig.FooterLogoDescription %> alt="$SiteConfig.FooterLogoDescription" title="$SiteConfig.FooterLogoDescription"<% end_if %> />
              </a>
            <% end_if %>
          <% else %>
            <a href="http://newzealand.govt.nz/">
              <img src="$ThemeDir/images/newzealand-government-footer.png" width="210" alt="newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" title="newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" />
            </a>
          <% end_if %>
      </div>
    </div>

    <div class="row footer-copyright">
      <div class="col-xs-12 text-center">
        <p><small>$SiteConfig.Title &copy; $CurrentDatetime.Format(Y)</small></p>
      </div>
    </div>
</div>
