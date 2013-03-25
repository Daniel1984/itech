class Itech.Views.SupportModalView extends Backbone.View
	className	: 'modal hide fade'
	
	template	: JST['support/modal']

	initialize: (options) ->
		@render()

	render: =>
		@$el.html(@template(model: @model))
		$(@el).modal('show')
		@
