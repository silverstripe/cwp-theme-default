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
					<% with $BlogEntries %>
						Viewing <% if $NotFirstPage %>page $CurrentPage of <% end_if %>$Count blog posts
					<% end_with %>
					<% if $SelectedTag %>
						tagged with '$SelectedTag'
					<% else_if $SelectedDate %>
						posted in $SelectedNiceDate
					<% else_if $SelectedAuthor %>
						by $SelectedAuthor
					<% end_if %>
				</h2>
				<% if $SelectedTag || $SelectedDate || $SelectedAuthor %>
					<p class="pull-right"><a href="$Link">Browse all blog posts</a></p>
				<% end_if %>
			</div>

			<% if $BlogEntries %>
				<% loop $BlogEntries %>
					<article class="$EvenOdd">
						<% include BlogSummary %>
					</article>
				<% end_loop %>

				<% with $BlogEntries %>
					<% include Pagination %>
				<% end_with %>
			<% else %>
				<article>
					<p>There are no blog posts</p>
				</article>
			<% end_if %>

			$Form
			<% include RelatedPages %>
			$PageComments
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
</div>