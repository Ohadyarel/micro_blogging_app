$(document).ready(function(){
	$("#terms_click").click(function(e){
		e.preventDefault();
		$(".shadow").css('display', 'block');
		$("#terms_modal").css('display', 'block');
	})

	$(".shadow").click(function() {
		$(".shadow").css('display', 'none');
		$("#terms_modal").css('display', 'none');
	})

	$("#close_terms").click(function() {
		$(".shadow").css('display', 'none');
		$("#terms_modal").css('display', 'none');
	})

})