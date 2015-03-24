<div class="blog-post-meta">
	<%t Blog.By "by" %>

	<% if $Authors %><% loop $Authors %>
		<% if $URLSegment %>
			<a href="{$Up.Parent.ProfileLink($URLSegment)}">$Name.XML</a>
		<% else %>
			$Name.XML
		<% end_if %>
		<% if not $Last || $Up.AuthorNames %>,<% end_if %>
	<% end_loop %><% end_if %>

	<% if $AuthorNames %>
		$AuthorNames,
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
