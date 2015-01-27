<% if $TagsCollection %>
<nav role="navigation">
	<ul class="tagcloud unstyled">
		<% loop $TagsCollection %>
			<li class="tagcloud-{$Class}"><a href="$Link" title="View entries tagged $Tag.ATT">$Tag.XML</a></li>
		<% end_loop %>
	</ul>
</nav>
<% end_if %>