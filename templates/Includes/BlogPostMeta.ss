<div class="blog-post-meta">
	
	<% if $Credits %>
		<%t Blog.By "by" %>
		<% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %> and <% end_if %><% if $URLSegment %><a href="$URL">$Name.XML</a><% else %>$Name.XML<% end_if %><% end_loop %>
	<% end_if %>

	<% if $PublishDate %>
		<time datetime="$PublishDate">$PublishDate.Long</time>
	<% end_if %>

	<% if $Comments %>
		<p>
			<a href="$Link#comments-holder" title="View Comments Posted">$Comments.Count <% _t('BlogEntry_ss.COMMENTS', 'Comments') %></a>
		</p>
	<% end_if %>
</div>
