<div class="row">
	<% include Breadcrumbs %>
	<% include BlogSideBar %>

	<div class="span9">
		<div id="main" role="main">
			<h1 class="page-header">$Title</h1>
			<% if $Author || $Date %><p><% if $Author %>By $Author.XML, <% end_if %><time datetime="$Date.Long">$Date.Long</time> </p><% end_if %>
			$Content.RichLinks
			<% include BlogEntryTags %>
			$Form
			<% include RelatedPages %>
			$CommentsForm
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
</div>
