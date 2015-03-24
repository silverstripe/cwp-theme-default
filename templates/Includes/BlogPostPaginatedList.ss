<% if $PaginatedList %>
	<% if $CurrentProfile %>
		<h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname for $Title:</h2>
	<% end_if %>

	<% loop $PaginatedList %>
		<article class="blog-entry $EvenOdd">
			<% include BlogSummary %>
		</article>
	<% end_loop %>

	<% with $PaginatedList %>
		<% include Pagination %>
	<% end_with %>
<% else %>
	<p>There are no blog posts</p>
<% end_if %>
