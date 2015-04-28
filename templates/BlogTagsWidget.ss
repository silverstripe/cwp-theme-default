<% if $Tags %>
	<ul class="tagcloud unstyled">
		<% loop $Tags %>
			<li class="tagcloud-{$Class}">
				<a href="$Link" title="View {$BlogPosts.Count} blog posts tagged $Title.ATT">
					$Title.XML <span class="nonvisual-indicator">({$BlogPosts.Count} posts)</span>
				</a>
			</li>
		<% end_loop %>
	</ul>
<% end_if %>
