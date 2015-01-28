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
					<% if $SelectedTag %>
						<% _t('BlogHolder_ss.VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'
					<% else_if $SelectedDate %>
						<% _t('BlogHolder_ss.VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate
					<% else_if $SelectedAuthor %>
						<% _t('BlogHolder_ss.VIEWINGPOSTEDBY', 'Viewing entries posted by') %> $SelectedAuthor
					<% else %>
						Viewing all entries
					<% end_if %>
					<% if $SelectedTag || $SelectedDate || $SelectedAuthor %>
						<a href="$Link">Show all entries</a>
					<% end_if %>
				</h2>
				<p class="pull-right">
					<% if $BlogEntries %>
						<% with $BlogEntries %>$FirstItem - $LastItem of $count<% end_with %>
					<% else %>
						None
					<% end_if %>
				</p>
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
					<p><% _t('BlogHolder_ss.NOENTRIES', 'There are no blog entries') %></p>
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
