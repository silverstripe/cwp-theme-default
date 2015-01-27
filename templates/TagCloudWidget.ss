<nav role="navigation">
	<ul class="nav nav-list">
		<% loop TagsCollection %>
			<li class="$Class"><a href="$Link" title="View entries tagged $Tag.ATT">$Tag.XML</a></li>
		<% end_loop %>
	</ul>
</nav>