# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "turbolinks:load page:fetch", ()->
	console.log("hola2");
	componentHandler.upgradeDom()

	$(".best_in_place").best_in_place()
	$('textarea').autosize()




