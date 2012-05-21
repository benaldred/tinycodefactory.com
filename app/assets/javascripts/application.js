// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
$(document).ready(function(){
	
	if($('.pages-index').length > 0) {
	  
		$('#navbar').scrollspy();
  
	  // add the scroll top methdods in
	  $("#navbar .nav li a, #badge").click(function() {
		  var href = $(this).attr("href");
		  $(document.body).animate({scrollTop: jQuery(href).offset().top - 40}, 2000);
		  return false;
	  });	  
	}
});
