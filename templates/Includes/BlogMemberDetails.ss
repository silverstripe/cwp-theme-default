<div class="blog-member-details row">
	<div class="profile-summary span6">
		<h1 class="page-header">$CurrentProfile.FirstName $CurrentProfile.Surname</h1>
		<p>$CurrentProfile.BlogProfileSummary</p>
	</div>

	<% if $CurrentProfile.BlogProfileImage %>
	<div class="profile-image span3">
		$CurrentProfile.BlogProfileImage.setWidth(180)
	</div>
	<% end_if %>
</div>
