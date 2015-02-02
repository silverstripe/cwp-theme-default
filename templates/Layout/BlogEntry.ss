<div class="row">
	<% include Breadcrumbs %>
	<% include BlogEntrySideBar %>

	<div class="span9">
		<div id="main" role="main">
			<h1 class="page-header">$Title</h1>
			<% if $Author || $Date %><p><% if $Author %>By $Author.XML, <% end_if %><time datetime="$Date.Long">$Date.Long</time> </p><% end_if %>
			$Content.RichLinks
			$Form
			<% if $TagsCollection %>
				<p>
				<% loop $TagsCollection %>
					<a href="$Link" title="$Tag">$Tag $count</a>
					<% if $TagsCollection.count > 1 %>
						<% if $FirstLast == last %><% else %>, <% end_if %>
					<% end_if %>
				<% end_loop %>
				</p>
			<% end_if %><!-- add Categories here -->
			<% include RelatedPages %>
			$PageComments
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
</div>
