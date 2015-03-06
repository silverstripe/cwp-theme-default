<% if $Tags %>
	<p class="entry-tags">
		Tags: <% loop $Tags %><% if not $First %>, <% end_if %><a href="$Link" title="$Title.ATT">$Title</a><% end_loop %>
	</p>
<% end_if %>
<!-- add Categories here -->
<% if $Categories %>
	<p class="entry-categories">
		Categories: <% loop $Categories %><% if not $First %>, <% end_if %><a href="$Link" title="$Title.ATT">$Title</a><% end_loop %>
	</p>
<% end_if %>
