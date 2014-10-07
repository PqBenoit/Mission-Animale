missionAnmialeApp = angular.module('missionAnmialeApp', [])

missionAnmialeApp.controller 'HeaderCtrl', [ '$scope', ($scope) ->


	$(document).ready ->

		header = $(".navbar-default")
		
		$(window).scroll ->
			y = $(this).scrollTop()
			x = $("#page-2").offset().top
			
			if y >= x
				header.removeClass('white').addClass('black')
				return false
			else
				header.removeClass('black').addClass('white')
				return false

			$(target).addClassName('.current')

			return false

		$('a[href^="#"]').click ->
			target = $(this).attr('href')
			width = $(target).offset().top;
			console.log target
			$('html, body').animate {scrollTop:width}, 500
			$(target).addClassName('.current')
			
			return false

]
