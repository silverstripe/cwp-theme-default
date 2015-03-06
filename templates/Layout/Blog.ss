<div class="row">
	<% include Breadcrumbs %>
	<% include BlogSideBar %>
	
	<div class="<% if $SideBarView %>span9<% else %>span12<% end_if %> resultsList">
		<div id="main" role="main">
			<h1 class="page-header">$Title</h1>

			<div class="clearfix">
				$Content.RichLinks
			</div>

			<div class="resultsHeader">
				<h2 class="pull-left">
					<% with $PaginatedList %>
						Viewing <% if $NotFirstPage %>page $CurrentPage of <% end_if %>$Count blog posts
					<% end_with %>
					<% if $CurrentTag %>
						tagged with '$CurrentTag.Title'
					<% else_if $CurrentCategory %>
						in category '$CurrentCategory.Title'
					<% else_if $ArchiveYear %>
						from
						<% if $ArchiveDay %>
							$ArchiveDate.Nice
						<% else_if $ArchiveMonth %>
							$ArchiveDate.format("F, Y")
						<% else %>
							$ArchiveDate.format("Y")
						<% end_if %>
					<% else_if $CurrentAuthor %>
						by $CurrentAuthor
					<% end_if %>
				</h2>
				<% if $ArchiveYear || $CurrentTag || $CurrentCategory || $CurrentAuthor %>
					<p class="pull-right"><a href="$Link">Browse all blog posts</a></p>
				<% end_if %>
			</div>

			<% if $PaginatedList %>
				<% loop $PaginatedList %>
					<article class="$EvenOdd">
						<% include BlogSummary %>
					</article>
				<% end_loop %>

				<% with $PaginatedList %>
					<% include Pagination %>
				<% end_with %>
			<% else %>
				<article>
					<p>There are no blog posts</p>
				</article>
			<% end_if %>

			$Form
			<% include RelatedPages %>
			$CommentsForm
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
</div>