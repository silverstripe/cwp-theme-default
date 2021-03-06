<footer class="container" role="contentinfo">
	<h2 class="nonvisual-indicator">Footer</h2>

	<% if Footer %>
		<ul class="nav nav-pills pull-left">
			<% with Footer %>
				<% loop Children %>
					<li class="$LinkingMode<% if $LinkingMode = current %> active<% end_if %>">
						<a href="$Link" class="$LinkingMode">
							$MenuTitle.XML
						</a>
					</li>
				<% end_loop %>
			<% end_with %>
		</ul>
	<% end_if %>

	<% if SiteConfig.FacebookURL || SiteConfig.TwitterUsername %>
		<div class="socialLinks pull-right" role="complementary">
			<% if SiteConfig.TwitterUsername %>
				<a href="http://www.twitter.com/$SiteConfig.TwitterUsername"><i class="icon-twitter-sign icon-dark" aria-hidden="true"></i>Follow us on Twitter</a>
			<% end_if %>
			<% if SiteConfig.FacebookURL %>
				<a href="http://www.facebook.com/$SiteConfig.FacebookURL"><i class="icon-dark icon-facebook-sign" aria-hidden="true"></i>Join us on Facebook</a>
			<% end_if %>
		</div>
	<% end_if %>

	<div class="footer-logo">
		<% if SiteConfig.FooterLogo %>
			<% if SiteConfig.FooterLogoLink %>
				<a href="$SiteConfig.FooterLogoLink">
			<% end_if %>
				<img src="$SiteConfig.FooterLogo.URL" width="$SiteConfig.FooterLogo.Width" height="$SiteConfig.FooterLogo.Height"<% if SiteConfig.FooterLogoDescription %> alt="$SiteConfig.FooterLogoDescription" title="$SiteConfig.FooterLogoDescription"<% end_if %> />
			<% if SiteConfig.FooterLogoLink %>
				</a>
			<% end_if %>
		<% else %>
			<a href="http://newzealand.govt.nz/">
				<img src="$ThemeDir/images/newzealand-government-footer.png" width="210" height="30" alt="newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" title="newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" />
			</a>
		<% end_if %>
	</div>
	
	<div class="footer-copyright">
		<p><small>$SiteConfig.Title &copy; $CurrentDatetime.Format(Y)</small></p>
	</div>
	
</footer>
