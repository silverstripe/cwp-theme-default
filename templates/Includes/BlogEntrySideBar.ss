<div class="span3" id="Sidebar">
	
	<div class="well update-information">
		<h2 class="h6-style">About this blog post</h2>
		<dl>
			<dt><%t BlogEntry.DT 'Date' %>:</dt>
			<dd><time datetime="$Date.Long">$Date.Long</time></dd>

			<% if $Author %>
				<dt><%t BlogEntry.AU 'Author' %>:</dt>
				<dd>$Author.XML</dd>
			<% end_if %>

			<% if $Comments %>
				<dt><%t BlogEntry_ss.COMMENTS 'Comments' %>:</dt>
				<dd>$Comments.Count</dd>
			<% end_if %>

			<% if TagsCollection %>
				<dt><%t BlogEntry_ss.TAGS 'Tags' %></dt>
				<dd>
					<ul class="unstyled update-tags">
					<% loop TagsCollection %>
						<li class="label"><a href="$Link" title="$Tag">$Tag</a></li>
					<% end_loop %>
					</ul>
				</dd>
			<% end_if %>
		</dl>
	</div>

	$SideBarView
</div>
