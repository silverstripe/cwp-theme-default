<div class="row">
	<% include Breadcrumbs %>
	<% include BlogEntrySideBar %>
	
	<div id="main" class="span9" role="main">
		<h1 class="page-header">$Title</h1>
		$Content.RichLinks
		$Form
		<% include RelatedPages %>
		$PageComments
		<% include PrintShare %>
	</div>
</div>
