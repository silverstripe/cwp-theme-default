<div class="row">
	<div class="span9">
		<% include Breadcrumbs %>
		<div id="main" role="main">
			<h1 class="page-header">$Title</h1>


			<p class="blog-post-meta">	
				<% if $Authors || $AuthorNames || $PublishDate %>
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
				<time datetime="$PublishDate.Long">$PublishDate.Long</time>

			</p>
			<p>
				<% if $Comments %> <a href="$Link#comments-holder" title="View Comments Posted">$Comments.Count <% _t('BlogEntry_ss.COMMENTS', 'Comments') %></a><% end_if %>
			</p>

			$Content.RichLinks
			<% include BlogEntryTags %>
			$Form
			<% include RelatedPages %>
			$CommentsForm
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
	<% include BlogSideBar %>
</div>
