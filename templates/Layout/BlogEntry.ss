<div class="row">
	<% include Breadcrumbs %>
	<% include BlogSideBar %>
	
	<div id="main" class="<% if $SideBarView %>span9<% else %>span12<% end_if %>" role="main">
		<h1 class="page-header">$Title</h1>
		<p class="authorDate"><% _t('POSTEDBY', 'Posted by') %> $Author.XML <% _t('POSTEDON', 'on') %> $Date.Long | $Comments.Count <% _t('COMMENTS', 'Comments') %></p>
		<% if TagsCollection %>
			<p class="tags">
				 <% _t('TAGS', 'Tags:') %>
				<% loop TagsCollection %>
					<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
				<% end_loop %>
			</p>
		<% end_if %>
		$Content.RichLinks
		$Form
		<% include RelatedPages %>
		$PageComments
		<% include PrintShare %>
	</div>
</div>
