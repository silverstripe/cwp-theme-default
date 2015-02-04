<% if $Dates %>
<nav role="navigation">
	<% if $DisplayMode == month %>
		<ul class="archiveMonths nav nav-list">
			<% loop $Dates %>
				<li>
					<a href="$Link" title="View blog posts in $Date.Format(F) $Date.Year">
						$Date.Format(F) $Date.Year
					</a>
				</li>
			<% end_loop %>
		</ul>
	<% else %>
		<ul class="archiveYears nav nav-list">
			<% loop $Dates %>
				<li>
					<a href="$Link" title="View blog posts in $Date.Year">
						$Date.Year<% if not Last %>,<% end_if %>
					</a>
				</li>
			<% end_loop %>
		</ul>
	<% end_if %>
</nav>
<% end_if %>