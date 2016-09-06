<div class="row">
	<div class="<% if Menu(2) %>span9<% else %>span12<% end_if %>">
		<div id="main">
			<h1 class="page-header">$Title</h1>

			<div class="clearfix"> 
				$Content.RichLinks
			</div>
			$Form

			<ul class="sitemap">
				<% if SelectedPage %>
					<% loop SelectedPage.Children %>
					<li data-pagetype="$ClassName" class="$FirstLast initial class-$ClassName">
					<% include SitemapNode %>
					</li>
					<% end_loop %>
				<% else %>
					<% loop Menu(1) %>
					<li data-pagetype="$ClassName" class="$FirstLast initial class-$ClassName">
					<% include SitemapNode %>
					</li>
					<% end_loop %>
				<% end_if %>
			</ul>
			$CommentsForm
		</div>
	</div>
	<% if Menu(2) %>
		<aside class="span3">
			<% include SidebarNav %>
		</aside>
	<% end_if %>
</div>

