/**
 * @package comments
 */
(function($) {
	$.entwine( "ss.comments", function($) {

		/**
		 * Comment reply form
		 */
		$( "body .comment-replies-container .comment-reply-form-holder" ).entwine({
			onmatch: function() {
				// If and only if this is not the currently selected form, hide it on page load
				var selectedHash = window.document.location.hash.substr(1),
					formID = this.data('formId');
				if( selectedHash && selectedHash === formID ) {
					this.ensureForm();
					this.scrollTo();
				}
				
				// This should do the actual hiding-showing of the form
				this._super();
			},
			onunmatch: function() {
				this._super();
			},
			ensureForm: function() {
				// Ensures that a form is loaded within this area
				if(this.find('form').length) {
					return;
				}
				
				// Duplicate global reply form
				// Replicates behaviour of CommentingController::ReplyForm() in javascript
				var formTemplate =
					$("#Form_CommentsForm")
						.clone()
						.attr('action', this.data('formAction'))
						.attr('id', this.data('formId'))
						.addClass('reply-form');
				formTemplate.find("input[name='ParentCommentID']").val(this.data('formParentid'));
				
				this.append(formTemplate);
			},
			scrollTo: function() {
				$('html, body').animate({
					scrollTop: this.offset().top
				}, 500);
			}
		});
			
		/**
		 * Toggle on/off reply form
		 */
		$( "body .comment-reply-link" ).entwine({
			onclick: function( e ) {
				var allForms = $( ".comment-reply-form-holder" ),
					// Extract the hash component from the rewritten link to get the form ID
					formID = this.data('href').replace(/^[^#]*#/, '#'),
					form = $(formID + "_Holder");
				
				// When we select a form, hide all other forms
				// If we select an already open form, simply hide it
				e.preventDefault();
				if(form.is(':visible')) {
					allForms
						.slideUp()
						.attr('aria-expanded', 'false');
				} else {
					allForms
						.not(form)
						.slideUp()
						.attr('aria-expanded', 'false');
					form.ensureForm();
					form
						.slideDown()
						.attr('aria-expanded', 'true');
				}
			}
		});

	});
})(jQuery);

