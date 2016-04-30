$(document).ready(function(){
	$("#delete_account_button").click(function(e){
		e.preventDefault();
		$(".shadow").css('display', 'block');
		$("#delete_modal").css('display', 'block');
	})

	$(".shadow").click(function() {
		$(".shadow").css('display', 'none');
		$("#delete_modal").css('display', 'none');
	})

	$("#delete_cancel").click(function() {
		$(".shadow").css('display', 'none');
		$("#delete_modal").css('display', 'none');
	})


});