<div class="row">
	<div class="<% if $SideBarView %>span9<% else %>span12<% end_if %> resultsList">
		<% include Breadcrumbs %>
		<div id="main" role="main">
			<h1 class="page-header">$Title</h1>

			<div class="clearfix">
				$Content.RichLinks
			</div>

			<% include BlogPostPaginatedList %>

			$Form
			<% include RelatedPages %>
			$CommentsForm
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
	<% include BlogSideBar %>
</div>