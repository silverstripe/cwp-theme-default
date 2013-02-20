(function($) {
	$(document).ready(function() {
		$('.nav-collapse')
			.addClass('collapse')
			.addClass('collapsed')
			.on('hidden', function(){
				$(this).addClass('collapsed');
				$(this).siblings('button').attr('aria-expanded', 'false');
			})
			.on('show', function(){
				$(this).removeClass('collapsed');
				$(this).siblings('button').attr('aria-expanded', 'true');
			});

		$('.navbar a .showChildren').click(function(e) {
			e.preventDefault();
			var oldOpen = $('.navbar .open');		
			$(this).closest('li').addClass('open');
			oldOpen.removeClass('open');
			return false;
		});

		// Don't let the Go! button submit the search form if it's empty.
		$('#SearchGroup input[type="submit"]').click(function(){
			var searchInput = $(this).siblings('input[type="search"]');
			var searchValue = $.trim(searchInput.val());
			if (searchValue.length == 0) {
				searchInput.focus();
				return false;
			}
		});

		$('form fieldset > div.field:odd').addClass('odd');

		$('.page-toggle .button').click(function() {
			$(this).toggleClass('open');
			$(this).closest('li').toggleClass('open');
		});

		$('#print-placeholder').replaceWith('<button type="button" onclick="window.print(); return false;">Print</button>');
	})
})(jQuery);
