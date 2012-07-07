// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(".fancybox-effects-a").fancybox({
   padding: 0,
   openEffect : 'elastic',
   openSpeed  : 150,
   closeEffect : 'elastic',
   closeSpeed  : 150,
   closeClick : true,
   helpers : {
		       overlay : null
			 }
});

$(".fancybox-effects-b").fancybox({
   padding: 0,
   openEffect : 'elastic',
   openSpeed  : 150,
   closeEffect : 'elastic',
   closeSpeed  : 150,
   closeClick : true,
   helpers : {
		       overlay : null
			 }
});

$(".fancybox-effects-c").fancybox({
   padding: 0,
   openEffect : 'elastic',
   openSpeed  : 150,
   closeEffect : 'elastic',
   closeSpeed  : 150,
   closeClick : true,
   helpers : {
		       overlay : null
			 }
});

$(".fancybox-effects-d").fancybox({
   padding: 0,
   openEffect : 'elastic',
   openSpeed  : 150,
   closeEffect : 'elastic',
   closeSpeed  : 150,
   closeClick : true,
   helpers : {
		       overlay : null
			 }
});

$(".fancybox-effects-e").fancybox({
   padding: 0,
   openEffect : 'elastic',
   openSpeed  : 150,
   closeEffect : 'elastic',
   closeSpeed  : 150,
   closeClick : true,
   helpers : {
		       overlay : null
			 }
});


$(document).ready(function() {
  $(".notice").delay(2000).fadeOut(2000);  
});



$(function() {
		$('#plan_start_date').datepicker({
		  dateFormat: "yy-mm-dd"
		});
	});

