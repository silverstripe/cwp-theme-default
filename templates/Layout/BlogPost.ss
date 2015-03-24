<div class="row">
	<div class="span9">
		<% include Breadcrumbs %>
		<div id="main" role="main">
			<h1 class="page-header">$Title</h1>

			<% include BlogPostMeta %>

			$Content.RichLinks
			<% include BlogEntryTags %>
			$Form
			<% include RelatedPages %>
			$CommentsForm
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
	<% include BlogSideBar %>
</div>
