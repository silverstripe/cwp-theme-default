<?xml version="1.0" encoding="utf-8"?>
<feed xmlns="http://www.w3.org/2005/Atom">
	<title>$Title</title>
	<link href="$Link" rel="self" />
	<link href="$BaseHref" />
	<id>$Link.XML</id>
	<updated><% if Results %>$Results.First.LastEdited.Rfc3339<% else %>$Now.Rfc3339<% end_if %></updated>
	<% cached 'page_changes_atom', ID, Results.First.Version %>
		<% loop Results %>
			<entry>
				<title>$Title.XML</title>
				<link href="$AbsoluteLink" />
				<% if Date %><updated>$Date.Rfc3339</updated>
				<% else %><updated>$Created.Rfc3339</updated><% end_if %>
				<author><name><% if Author %>$Author.XML<% end_if %></name></author>
				<id>$AbsoluteLink</id>
				<summary type="html">
					$Content.AbsoluteLinks.XML
				</summary>
			</entry>
		<% end_loop %>
	<% end_cached %>
</feed>
