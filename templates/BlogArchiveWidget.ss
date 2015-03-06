<% if $Archive %>
	<ul class="blogarchive unstyled nav nav-list">
		<% loop $Archive %>
			<li class="blogarchive-{$Class}">
				<a href="$Link" title="View blog posts in $Title.ATT">
					$Title.XML
				</a>
			</li>
		<% end_loop %>
	</ul>
<% end_if %>
