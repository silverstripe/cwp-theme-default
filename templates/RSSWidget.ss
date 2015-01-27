<% if $FeedItems %>
<nav role="navigation">
	<ul class="nav nav-list">
		<% loop $FeedItems %>
			<li><a href="$Link" title="$Title">$Title</a></li>
		<% end_loop %>
	</ul>
</nav>
<% end_if %>