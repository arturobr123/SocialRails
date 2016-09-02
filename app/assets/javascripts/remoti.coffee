$(document).on "click", ".file-activate", (ev)->
	selector = $(this).attr("for")
	$(selector).click()

$(document).on "change", ".remotipart", (ev)->
	$(this).parent().parent().submit()


$(document).on "click", ".like", (ev)->
	selector = $(this).attr("for")
	id = $(this).attr("id")
	$(selector+id).parent().submit()