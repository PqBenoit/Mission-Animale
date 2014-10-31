missionAnmialeApp = angular.module('missionAnmialeApp', [])

missionAnmialeApp.controller 'HeaderCtrl', [ '$scope', ($scope) ->


	$(document).ready ->

		header = $(".navbar-default")
		x = $("#page-2").offset().top
		$(".background").css("background-image", "url('img/bg-2.jpg')")
		$(".background").css("background-size", "cover")
		header.hide()
		
		$(window).scroll ->
			y = $(this).scrollTop()
			
			if y >= x
				header.fadeIn()
				header.css('position', 'fixed')
				$(".background").css("background-image", "url('img/bg-3.jpg')")
			else
				header.fadeOut()
				$(".background").css("background-image", "url('img/bg-2.jpg')")

			if y >= 2*x
				header.removeClass('black').addClass('black-white')
				return false
			else
				header.removeClass('black').addClass('white')
				$('#logo').attr('src', 'img/logo-black-white.png')				
				return false

		

		$('.scroller').click ->
			width = x
			$('html, body').animate {scrollTop:width}, 1000
			$(target).addClassName('.current')
			return false

		$('.accueil').click ->
			target = '#page-1'
			width = 0
			$('html, body').animate {scrollTop:width}, 1000
			return false

		$('span[href^="#"]').click ->
			target = $(this).attr('href')
			width = $(target).offset().top
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
