<% require javascript('themes/default/js/cwp-comments-interface.js') %>

<% if $RepliesEnabled %>
	<div class="comment-replies-container">
		
		<div class="comment-reply-form-holder" id="{$ReplyForm.FormName}_Holder"
			data-form-action="{$ReplyForm.FormAction}" data-form-id="{$ReplyForm.FormName}" data-form-parentid="{$ID}"
			></div>
	
		<div class="comment-replies-holder">
			<% if $Replies %>
				<ol class="comments-list level-{$Depth}">
					<% loop $Replies %>
						<li class="comment $EvenOdd<% if FirstLast %> $FirstLast <% end_if %> $SpamClass $ExtraClass">
							<% include CommentsInterface_singlecomment %>
						</li>
					<% end_loop %>
				</ol>
			<% end_if %>
		</div>
	</div>
<% end_if %>
