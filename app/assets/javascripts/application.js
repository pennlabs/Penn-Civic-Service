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
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

$(document).ready(function() {
	var title = $('.bigCardTitle').children('a').html();
	var orgName = $('.bigCardTitle').find('.orgName').html();
	var location = $('#eventLocation').html();


	if ($(window).width() < 768) {
		if (title.length > 15) {
			var tsub = title.substring(0,15) + "..."
			$('.bigCardTitle').children('a').text(tsub);
		}
		if (orgName.length > 10) {
			var osub = orgName.substring(0,10) + "..."
			$('.bigCardTitle').find('.orgName').text(osub);
		}
		if (location.length > 13) {
			var lsub = location.substring(0,13) + "..."
			$('#eventLocation').text(lsub);
		}
	} else if ($(window).width() < 992) {
		if (title.length > 20) {
			var tsub = title.substring(0,20) + "..."
			$('.bigCardTitle').children('a').text(tsub);
		}
		if (orgName.length > 10) {
			var osub = orgName.substring(0,10) + "..."
			$('.bigCardTitle').find('.orgName').text(osub);
		}
		if (location.length > 10) {
			var lsub = location.substring(0,10) + "..."
			$('#eventLocation').text(lsub);
		}
	}

	if ($("#tftextinput").is(":focus")) {
	  $("#search-btn").addClass("focus");
	} else {
		$("#search-btn").removeClass("focus");
	}

	$('#tftextinput').blur(function() {
        $('#search-btn').removeClass("focused").addClass("not-focused");
      })
      .focus(function() {
        $("#search-btn").addClass("focused").removeClass("not-focused")
      });

});
