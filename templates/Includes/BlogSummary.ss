<% if $FeaturedImage %>
	<figure>
		$FeaturedImage.SetHeight(150)
	</figure>
<% end_if %>
<header>
	<h3><a href="$Link">$Title</a></h3>
</header>

<% if $Date || $Author || $Comments %>
	<p class="metaInfo">
		<% if $Date %>
			<time datetime="$Date">$Date.Long <% if $StartTime %>$StartTime.Nice <% end_if %>
			</time>
		<% end_if %>
		<% if $Author %>by $Author<% end_if %>
		<% if $Comments %> | <a href="$Link#comments-holder" title="View Comments Posted">$Comments.Count <% _t('BlogEntry_ss.COMMENTS', 'Comments') %></a><% end_if %>
	</p>
<% end_if %>

<% if BlogHolder.ShowFullEntry %>
	$Content
<% else %> 
	<p>$Content.FirstParagraph(html)</p>
<% end_if %>