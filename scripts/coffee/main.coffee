missionAnmialeApp = angular.module('missionAnmialeApp', [])

missionAnmialeApp.controller 'HeaderCtrl', [ '$scope', ($scope) ->


	$(document).ready ->

		header = $(".navbar-default")
		
		$(window).scroll ->
			y = $(this).scrollTop()
			x = $("#page-2").offset().top
			
			if y >= 2*x
				$('#logo').attr('src', 'img/logo-black-blue.png')
				header.removeClass('white').addClass('black')
				console.log y
				return false
			else
				header.removeClass('black').addClass('white')
				$('#logo').attr('src', 'img/logo-black-white.png')
				return false

			$(target).addClassName('.current')

			return false

		$('span[href^="#"]').click ->
			target = $(this).attr('href')
			width = $(target).offset().top;
			console.log target
			$('html, body').animate {scrollTop:width}, 1000
			$(target).addClassName('.current')
			return false

		$('.paragraphs').hide()
		$('.content-2-1').mouseenter ( ->
			$('.title-2-1').hide()
			$('.paragraph-2-1').fadeIn()
		)

		$('.content-2-1').mouseleave ( ->
			$('.paragraph-2-1').hide()
			$('.title-2-1').fadeIn()
		)

		$('.content-2-2').mouseenter ( ->
			$('.title-2-2').hide()
			$('.paragraph-2-2').fadeIn()
		)

		$('.content-2-2').mouseleave ( ->
			$('.paragraph-2-2').hide()
			$('.title-2-2').fadeIn()
		)

		$('.content-2-3').mouseenter ( ->
			$('.title-2-3').hide()
			$('.paragraph-2-3').fadeIn()
		)

		$('.content-2-3').mouseleave ( ->
			$('.paragraph-2-3').hide()
			$('.title-2-3').fadeIn()
		)
]
