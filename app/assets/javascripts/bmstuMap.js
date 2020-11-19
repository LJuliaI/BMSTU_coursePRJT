$('.part').hover (
	function() {

		$('.description').html($(this).attr('description-data'));
		$('.description').fadeIn(5);

	},
	function() {
		$('.description').fadeOut(5);
	}
)

$( document ).ready(function () {
$('.wrap1-img2').hide();
$('.wrap1-img3').hide();

$('.wrap1-btn2').click(function () {
	$('.wrap1-img1').hide();
  $('.wrap1-img3').hide();
  $('.wrap1-img2').toggle(50);
});
$('.wrap1-btn1').click(function () {
	$('.wrap1-img2').hide();
  $('.wrap1-img3').hide();
  $('.wrap1-img1').toggle(50);
});
$('.wrap1-btn3').click(function () {
	$('.wrap1-img1').hide();
  $('.wrap1-img2').hide();
  $('.wrap1-img3').toggle(50);
});
})
