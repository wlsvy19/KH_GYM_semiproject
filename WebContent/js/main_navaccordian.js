$(document).ready(function() {
		$(function() {
			$(".nav_accordian h3").click(function() {
				$(".nav_accordian ul ul").slideUp();
				if (!$(this).next().is(":visible")) {
					$(this).next().slideDown();
				}
			})
		});
	});