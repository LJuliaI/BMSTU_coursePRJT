$('.part').hover (
	function() {
		$('.boxt').html($(this).attr('boxt-data'));
		$('.boxt').fadeIn();
	},
	function() {
		$('.boxt').fadeOut(50);
	}
)
console.log("custom js file loaded")
