<div class="row">
	<% include Breadcrumbs %>
	<% include BlogSideBar %>

	<div class="span9">
		<div id="main" role="main">
			<h1 class="page-header">$Title</h1>
			<% if $Author || $Date %><p><% if $Author %>By $Author.XML, <% end_if %><time datetime="$Date.Long">$Date.Long</time> </p><% end_if %>
			$Content.RichLinks
			<% if $TagsCollection %>
				<p class="entry-tags">
					Tags: <% loop $TagsCollection %><% if not $First %>, <% end_if %><a href="$Link" title="$Tag">$Tag</a><% end_loop %>
				</p>
			<% end_if %><!-- add Categories here -->
			$Form
			<% include RelatedPages %>
			$PageComments
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
</div>
