<% if $FeaturedImage %>
	<figure>
		$FeaturedImage.SetHeight(150)
	</figure>
<% end_if %>
<header>
	<h2><a href="$Link">$Title</a></h2>
</header>

<% if $PublishDate || $Author|| $AuthorNames || $Comments %>
	<p class="metaInfo">
		<% if $Authors || $AuthorNames %>
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
		<% end_if %>
		<% if $PublishDate %>
			<time datetime="$PublishDate">$PublishDate.Long</time>
		<% end_if %>	
	</p>
	<p class="metaInfo">
		<% if $Comments %> <a href="$Link#comments-holder" title="View Comments Posted">$Comments.Count <% _t('BlogEntry_ss.COMMENTS', 'Comments') %></a><% end_if %>
	</p>
<% end_if %>

<% if BlogHolder.ShowFullEntry %>
	$Content
<% else %> 
	<p>$Content.FirstParagraph(html)</p>
<% end_if %>

<% include BlogEntryTags %>
