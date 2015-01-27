<div class="span3" id="Sidebar">
	
	<div class="well update-information">
		<h2 class="nonvisual-indicator">Blog item information</h2>
		<dl>
			<dt>Date</dt>
			<dd><time datetime="$Date.Long">$Date.Long</time></dd>

			<dt>Author:</dt>
			<dd>$Author.XML</dd>

			<% if $Comments %>
			<dt>Comments:</dt>
			<dd>$Comments.Count</dd>
			<% end_if %>

			<% if TagsCollection %>
			<dt>Tags</dt>
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