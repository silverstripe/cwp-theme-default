<div class="row">
	<% include Breadcrumbs %>

	<div class="span9">
		<div id="main" role="main">
			<h1 class="page-header">$Title</h1>
			<% if $Author || $PublishDate %>
				<p><% if $Author %>By $Author.XML, <% end_if %><time datetime="$PublishDate.Long">$PublishDate.Long</time> </p>
			<% end_if %>
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
