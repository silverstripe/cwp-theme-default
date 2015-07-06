<div class="row">
	<div id="main" class="span12 resultsList" role="main">
		<h1 class="searchQuery page-header">Search results</h1>

		<% if $Results %>
			<% if $Original %>
				<div class="resultsHelper"><p>
					No search results were found matching <strong>$Original</strong>. Did you mean: <strong>$Query</strong>?
				</p></div>
			<% end_if %>
			<div class="resultsHeader">
				<h2 class="pull-left">Showing results for &quot;{$Query}&quot;</h2>
				<p class="pull-right">Displaying Page $Results.CurrentPage of $Results.TotalPages</p>
			</div>
			<ol id="SearchResults">
				<% loop $Results %>
					<li>
						<article class="$EvenOdd">
							<header>
								<h3>
									<a class="searchResultHeader" href="$Link">
										$Title
									</a>
								</h3>
							</header>
							<p>
								<% if $FileContent %>
									$FileContent.ContextSummary.RAW
								<% else_if Abstract %>
									$Abstract.XML
								<% else %>
									$Content.ContextSummary
								<% end_if %>
							</p>
						</article>
					</li>
				<% end_loop %>
			</ol>
			<% with $Results %>
				<% include Pagination %>
			<% end_with %>
			<% if $Suggestion %>
				<p class="pull-left moreResults">
					Similar results: <a href="$SuggestionLink">$Suggestion</a>.
				</p>
			<% end_if %>
		<% else %>
			<div class="resultsHelper"><p>
				No search results were found matching <strong>$Query</strong>.
				<% if $Suggestion %>
					Did you mean: <a href="$SuggestionLink">$Suggestion</a>.
				<% end_if %>
			</p></div>
		<% end_if %>
		<% include PrintShare %>
	</div>
</div>
