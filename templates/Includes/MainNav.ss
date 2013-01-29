<div class="navbar noCorners">
	<div class="navbar-inner">
		<div class="container">
			<a href="#" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="nav-text"><% _t('MENU', 'Menu') %></span>

				<span class="nav-right">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</span>
			</a>

			<div class="nav-collapse">
				<div id="SearchGroup">
					$SearchForm
				</div>
				<h2 class="nonvisual-indicator">Main navigation</h2>
				<ul class="nav">
					<% loop Menu(1) %>
						<li class="$LinkingMode<% if $LinkingMode = current %> active<% end_if %><% if Children %> dropdown <% end_if %>">
							<a href="$Link" class="$LinkingMode<% if Children %> dropdown-toggle" data-toggle="dropdown<% end_if %>">
								$MenuTitle.XML <% if Children %><span class="showChildren"><b class="caret"></b></span><% end_if %>
							</a>
							<% if Children %>
								<ul class="dropdown-menu">
									<% control Children %>
										<li>
											<a href="$Link">$MenuTitle.XML</a>
										</li>
									<% end_control %>
								</ul>
							<% end_if %>
						</li>
					<% end_loop %>
				</ul>
			</div>
		</div>
	</div>
</div>