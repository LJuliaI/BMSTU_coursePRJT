$('.part').hover (

	function() {
		console.log(this);
		$('.description').html($(this).attr('description-data'));
		$('.description').fadeIn(5);

	},
	function() {
		$('.description').fadeOut(5);
	}

)
