<div class="row">
	<div class="<% if $SideBarView %>span9<% else %>span12<% end_if %> resultsList">
		<% include Breadcrumbs %>

		<div id="main" role="main">
			<% include MemberDetails %>

			<hr />

			<div class="clearfix">
				$Content.RichLinks
			</div>

			<% if $PaginatedList %>
				<h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname for $Title:</h2>

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
