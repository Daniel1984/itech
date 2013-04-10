class Itech.Views.SupportErrorView extends Backbone.View

	events:
		"keypress :input[type='text']": "hideErrors"
		"keypress textarea": "hideErrors"

	initialize: (options) ->
		@el = options.el		
		@$el.find('.error').removeClass('error')
		@disableSubmit(true)
		@errors = $.parseJSON(options.error.responseText)
		@displayErrors()

	displayErrors: =>
		for field, msg of @errors
			@renderError(field)
			@renderPopovers(field, msg)

	renderError: (field) =>
		@$el.find(".#{field}").closest('.control-group').addClass('error')

	renderPopovers: (field, msg) =>
		options = 
			content: msg
			placement: 'top'
			trigger: 'hover'
			animation: false
		@$el.find(".#{field}").popover(options)

	hideErrors: (e) =>
		className = $(e.currentTarget).attr('class') 
		node = @$el.find(".#{className}")
		if @errors[className]
			node.closest('.control-group').removeClass('error')
			node.popover('destroy')
			delete @errors[className]
			if _.isEmpty(@errors) then @disableSubmit(false)

	disableSubmit: (bool) =>
		@$el.find('button').attr(disabled: bool)