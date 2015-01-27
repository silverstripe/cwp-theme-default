<% if $RSSLink %>
<nav role="navigation">
	<ul class="nav nav-list">
		<li>
			<a href="$RSSLink" class="subscribeLink" title="<% _t('SubscribeRSSWidget_ss.SUBSCRIBETITLE', 'Subscribe to this blog via RSS') %>">
	 			<% _t('SubscribeRSSWidget_ss.SUBSCRIBETEXT', 'Subscribe') %>
			</a>
		</li>
	</ul>
</nav>
<% end_if %>