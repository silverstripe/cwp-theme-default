<nav id="step-navigation" class="step-navigation">
	<ul class="step-buttons">
		<% if $Steps.Count > 1 %>
			<li class="step-button-wrapper" aria-hidden="true" style="display:none;">
				<button class="step-button-prev action">Prev</button>
			</li>
			<li class="step-button-wrapper" aria-hidden="true" style="display:none;">
				<button class="step-button-next action">Next</button>
			</li>
		<% end_if %>
		<% if $Actions %>
			<li class="step-button-wrapper Actions">
			<% loop $Actions %>
				$Field
			<% end_loop %>
			</li>
		<% end_if %>
	</ul>
</nav>
