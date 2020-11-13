$('.part').hover (
	function() {
		console.log(this);
		$('.description').html($(this).attr('description-data'));
		$('.description').fadeIn();

	},
	function() {
		$('.description').fadeOut(50);
	}
)
