<div class="blog-post-meta">
	
	<% if $Credits %>
		<%t BlogPostMeta_ss.By "by" %>
		<% loop $Credits %><% if not $First && not $Last %>, <% end_if %><% if not $First && $Last %><% if $TotalItems > '2' %>,<% end_if %> <%t BlogPostMeta_ss.AND "and" %> <% end_if %><% if $URLSegment %><a href="$URL">$Name.XML</a><% else %>$Name.XML<% end_if %><% end_loop %>
	<% end_if %>

	<% if $PublishDate %>
		<% if $Credits %>
			<%t BlogPostMeta_ss.ON "on" %>
		<% else %>
			<%t BlogPostMeta_ss.POSTED "posted" %>
		<% end_if %>
		<time datetime="$PublishDate">$PublishDate.Long</time>
	<% end_if %>

	<% if $AllVisibleComments %>
		<p>
			<a href="$Link#comments-holder" title="View Comments Posted">$AllVisibleComments.Count <% _t('BlogEntry_ss.COMMENTS', 'Comments') %></a>
		</p>
	<% end_if %>
</div>
