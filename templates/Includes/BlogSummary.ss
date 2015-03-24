<% if $FeaturedImage %>
	<figure>
		$FeaturedImage.SetHeight(150)
	</figure>
<% end_if %>
<header>
	<h2><a href="$Link">$Title</a></h2>
</header>

<% include BlogPostMeta %>

<% if BlogHolder.ShowFullEntry %>
	$Content
<% else %> 
	<p>$Content.FirstParagraph(html)</p>
<% end_if %>

<% include BlogEntryTags %>
