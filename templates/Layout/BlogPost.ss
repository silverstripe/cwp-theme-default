<div class="row">
	<div class="span9">
		<% include Breadcrumbs %>

		<div id="main" role="main">
			<article class="blog-entry">
				<header>
					<h1 class="page-header">$Title</h1>
					<% include BlogPostMeta %>
				</header>
				$Content.RichLinks
				<% include BlogEntryTags %>
			</article>

			$Form
			<% include RelatedPages %>
			$CommentsForm
			<% include PrintShare %>
		</div>
		<% include LastEdited %>
	</div>
	<% include BlogSideBar %>
</div>
