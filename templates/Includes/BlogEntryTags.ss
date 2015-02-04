<% if $TagsCollection %>
	<p class="entry-tags">
		Tags: <% loop $TagsCollection %><% if not $First %>, <% end_if %><a href="$Link" title="$Tag">$Tag</a><% end_loop %>
	</p>
<% end_if %>
<!-- add Categories here -->