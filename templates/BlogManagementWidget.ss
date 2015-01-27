<nav role="navigation">
	<ul class="nav nav-list">
		<% if PostLink %><li><a href="$PostLink" title="<% _t('BlogManagementWidget_ss.POSTNEW', 'Post a new blog entry') %>"><% _t('BlogManagementWidget_ss.POSTNEW', 'Post a new blog entry') %></a></li><% end_if %> 
		<% if CommentLink %><li><a href="$CommentLink" title="$CommentText">$CommentText</a></li><% end_if %>
		<li><a href="Security/logout" title="<% _t('BlogManagementWidget_ss.LOGOUT', 'Logout') %>"><% _t('BlogManagementWidget_ss.LOGOUT', 'Logout') %></a></li>
	</ul>
</nav>