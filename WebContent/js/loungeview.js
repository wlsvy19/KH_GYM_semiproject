$(document).ready(function() {
		$('#btn1').on('click', function() {
			$('#myCarousel_pt').css({
				'display' : 'block'
			});
			$('#myCarousel_spinning').css({
				'display' : 'none'
			});
			$('#myCarousel_yoga').css({
				'display' : 'none'
			});
			$('#myCarousel_pilates').css({
				'display' : 'none'
			});
		});

		$('#btn2').on('click', function() {
			$('#myCarousel_pt').css({
				'display' : 'none'
			});
			$('#myCarousel_spinning').css({
				'display' : 'block'
			});
			$('#myCarousel_yoga').css({
				'display' : 'none'
			});
			$('#myCarousel_pilates').css({
				'display' : 'none'
			});
		});

		$('#btn3').on('click', function() {
			$('#myCarousel_pt').css({
				'display' : 'none'
			});
			$('#myCarousel_spinning').css({
				'display' : 'none'
			});
			$('#myCarousel_yoga').css({
				'display' : 'block'
			});
			$('#myCarousel_pilates').css({
				'display' : 'none'
			});
		});

		$('#btn4').on('click', function() {
			$('#myCarousel_pt').css({
				'display' : 'none'
			});
			$('#myCarousel_spinning').css({
				'display' : 'none'
			});
			$('#myCarousel_yoga').css({
				'display' : 'none'
			});
			$('#myCarousel_pilates').css({
				'display' : 'block'
			});
		});
		/////////////////////////////////////////////////////
		$('#btn1').on('click', function() {
			$('#content1').css({
				'display' : 'block'
			});
			$('#content2').css({
				'display' : 'none'
			});
			$('#content3').css({
				'display' : 'none'
			});
			$('#content4').css({
				'display' : 'none'
			});
		});

		$('#btn2').on('click', function() {
			$('#content1').css({
				'display' : 'none'
			});
			$('#content2').css({
				'display' : 'block'
			});
			$('#content3').css({
				'display' : 'none'
			});
			$('#content4').css({
				'display' : 'none'
			});
		});

		$('#btn3').on('click', function() {
			$('#content1').css({
				'display' : 'none'
			});
			$('#content2').css({
				'display' : 'none'
			});
			$('#content3').css({
				'display' : 'block'
			});
			$('#content4').css({
				'display' : 'none'
			});
		});

		$('#btn4').on('click', function() {
			$('#content1').css({
				'display' : 'none'
			});
			$('#content2').css({
				'display' : 'none'
			});
			$('#content3').css({
				'display' : 'none'
			});
			$('#content4').css({
				'display' : 'block'
			});
		});
	});
