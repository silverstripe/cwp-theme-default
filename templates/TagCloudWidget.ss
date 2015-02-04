<% if $TagsCollection %>
<ul class="tagcloud unstyled">
	<% loop $TagsCollection %>
		<li class="tagcloud-{$Class}"><a href="$Link" title="View {$Count} blog posts tagged $Tag.ATT">$Tag.XML <span class="nonvisual-indicator">({$Count} entries)</span></a></li>
	<% end_loop %>
</ul>
<% end_if %>