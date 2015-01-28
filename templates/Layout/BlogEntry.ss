<div class="row">
	<% include Breadcrumbs %>
	<% include BlogEntrySideBar %>
	
	<div class="span9">
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
