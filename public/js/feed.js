$(document).ready(function(){
	var maxLength = 150;
	$('#post_textbox').keyup(function() {
  	var length = $(this).val().length;
  	var length2 = maxLength-length;
  	$('#chars').text(length2);
	});
});