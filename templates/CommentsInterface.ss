<% if $CommentsEnabled %>
	<div id="$CommentHolderID" class="comments-holder-container">
	
		<div class="comments-holder">
			<p class="pull-right num num-total">$Comments.Count comments</p>
			<h2>Leave a reply</h2>
			
			<% if $Comments %>
				<ol class="comments-list">
					<% loop $Comments %>
						<li class="comment $EvenOdd<% if FirstLast %> $FirstLast <% end_if %> $SpamClass">
							<% include CommentsInterface_singlecomment %>
						</li>
					<% end_loop %>
				</ol>
			
				<% with $Comments %>
					<% include Pagination %>
				<% end_with %>
			<% end_if %>

			<p class="no-comments-yet"<% if $Comments.Count %> style='display: none' <% end_if %> ><% _t('CommentsInterface_ss.NOCOMMENTSYET','No one has commented on this page yet.') %> <a href="#Form_CommentsForm" title="Comment form">Be the first to reply</a></p>
		</div>

		<ul class="action-links">
			<% if DeleteAllLink %>
				<li class="delete-comments">
					<a href="$DeleteAllLink"><% _t('CommentsInterface_ss.PageCommentInterface.DELETEALLCOMMENTS','Delete all comments on this page') %></a>
				</li>
			<% end_if %>
			<% if $Comments %>
				<li><a href="$RssLinkPage"><% _t('CommentsInterface_ss.RSSFEEDCOMMENTS', 'RSS feed for comments on this page') %></a></li>
				<li><a href="$RssLink"><% _t('CommentsInterface_ss.RSSFEEDALLCOMMENTS', 'RSS feed for all comments') %></a></li>
			<% end_if %>
		</ul>
		
		<div class="commenting-area">
			<% if $CanPost %>
				<h3>Comment form</h3>
				<% if $ModeratedSubmitted %>
					<p id="$CommentHolderID_PostCommentForm_error" class="message good"><% _t('CommentsInterface_ss.AWAITINGMODERATION', 'Your comment has been submitted and is now awaiting moderation.') %></p>
				<% end_if %>
				$AddCommentForm
			<% else %>
				<p><% _t('CommentsInterface_ss.COMMENTLOGINERROR', 'You cannot post comments until you have logged in') %><% if PostingRequiresPermission %>,<% _t('CommentsInterface_ss.COMMENTPERMISSIONERROR', 'and that you have an appropriate permission level') %><% end_if %>. 
					<a href="Security/login?BackURL={$Parent.Link}" title="<% _t('CommentsInterface_ss.LOGINTOPOSTCOMMENT', 'Login to post a comment') %>"><% _t('CommentsInterface_ss.COMMENTPOSTLOGIN', 'Login Here') %></a>.
				</p>
			<% end_if %>
		</div>
	</div>
<% end_if %>
	
