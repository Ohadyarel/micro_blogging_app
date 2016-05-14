$(document).ready(function(){
	var maxLength = 150;
	$('textarea').keyup(function() {
  	var length = $(this).val().length;
  	var length2 = maxLength-length;
  	$('#chars').text(length2);
	});
});