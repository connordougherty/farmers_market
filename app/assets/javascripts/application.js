// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

document.addEventListener("turbolinks:load", function() {
  $("#dropdown-btn").click(2000, function() {
  	$("#dropdown-content").slideToggle();
  });
});

document.addEventListener("turbolinks:load", function() {
  $("#banner-slide").slideDown(function() {
	  if ($("#banner-slide").is(':visible')) {
	    $("#banner-slide").css('display', 'flex');
	    $("#circle").fadeIn();
	  }
	});
});