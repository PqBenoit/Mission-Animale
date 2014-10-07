missionAnmialeApp = angular.module('missionAnmialeApp', [])

missionAnmialeApp.controller 'HeaderCtrl', [ '$scope', ($scope) ->
	$(document).ready ->
		$('a[href^="#"]').click ->
			target = $(this).attr('href')
			width = $(target).offset().top;
			console.log width

			$('html, body').animate {scrollTop:width}, 500
			return false
]

# $(document).ready ->
# 	$('a[href^="#"]').click ->
# 		target = $(this).attr('href')
# 		width = $(target).offset().top;
# 		console.log width

# 		$('html, body').animate {scrollTop:width}, 500
# 		return false