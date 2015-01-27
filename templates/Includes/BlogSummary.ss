<% if FeaturedImage %>
	<figure>
		$FeaturedImage.SetHeight(150)
	</figure>
<% end_if %>
<header>
	<h3><a href="$Link">$Title</a></h3>
</header>

<% if $Date || $Author %>
	<p class="metaInfo">
		<% if $Date %>
			<time datetime="$Date">$Date.nice <% if $StartTime %>$StartTime.Nice <% end_if %>
			</time>
		<% end_if %>
		<% if Author %>by $Author<% end_if %>
	</p>
<% end_if %>

<p>
	<% if Abstract %>
		$Abstract
	<% else %>
		$Content.LimitWordCount
	<% end_if %>
</p>