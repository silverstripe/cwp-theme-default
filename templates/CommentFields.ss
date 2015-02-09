<div class="CompositeField comment-fields $extraClass row">
	
	<div class="span4">
		$FieldList.dataFieldByName('Comment').FieldHolder
	</div>
	
	<div class="span4">
		<% loop FieldList %>
			<% if $Name != 'Comment' %>
				$FieldHolder
			<% end_if %>
		<% end_loop %>
	</div>
</div>