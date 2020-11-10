$('.part').hover (
	function() {
		$('.bxt').html($(this).attr('bxt-data'));
		$('.descript').fadeIn();
	},
	function() {
		$('.bxt').fadeOut(50);
	}
)
