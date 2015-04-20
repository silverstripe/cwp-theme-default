<% if $RepliesEnabled %>
	<div class="comment-replies-container">
		
		<div class="comment-reply-form-holder">
			$ReplyForm
		</div>
	
		<div class="comment-replies-holder">
			<% if $Replies %>
				<ul class="comments-list level-{$Depth}">
					<% loop $Replies %>
						<li class="comment $EvenOdd<% if FirstLast %> $FirstLast <% end_if %> $SpamClass $ExtraClass">
							<% include CommentsInterface_singlecomment %>
						</li>
					<% end_loop %>
				</ul>
			<% end_if %>
		</div>
	</div>
<% end_if %>
