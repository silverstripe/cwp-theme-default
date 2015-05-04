<% if $Tags %>
	<ul class="tagcloud unstyled">
		<% loop $Tags %>
			<li class="tagcloud-{$Class}">
				<a href="$Link" title="View {$BlogPosts.Count} blog posts tagged $Title.ATT">
					$Title.XML
				</a>
			</li>
		<% end_loop %>
	</ul>
<% end_if %>
