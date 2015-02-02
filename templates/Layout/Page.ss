<div class="row">
	<% include Breadcrumbs %>
	<% if Menu(2) %>
		<aside class="span3">
			<% include SidebarNav %>
		</aside>
	<% end_if %>
	<div class="<% if Menu(2) %>span9<% else %>span12<% end_if %>">
		<div id="main" role="main">
			<h1 class="page-header">$Title</h1>
			$Content.RichLinks
			$Form
			<% include RelatedPages %>
			$PageComments
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
</div>
