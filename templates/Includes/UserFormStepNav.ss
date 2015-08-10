<nav id="step-navigation" class="step-navigation" aria-hidden="true" style="display:none;">
	<ul class="step-buttons">
		<li class="step-button-wrapper">
			<button class="step-button-prev action">Prev</button>
		</li>
		<li class="step-button-wrapper">
			<button class="step-button-next action">Next</button>
		</li>
		<% if $Actions %>
		<li class="step-button-wrapper Actions">
		<% loop $Actions %>
			$Field
		<% end_loop %>
		</li>
		<% end_if %>
	</ul>
</nav>
