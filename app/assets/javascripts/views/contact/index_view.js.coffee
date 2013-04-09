class Itech.Views.ContactIndexView extends Backbone.View
	el: '.contact-container'

	events:
		'click .submit-btn': 'handleSubmit'

	initialize: ->
		@message = new Itech.Models.Message()
		@message.on('sync', @handleSync)
		@message.on('error', @handleError)
		@nameField = @$el.find('.name')
		@emailField = @$el.find('.email')
		@phoneField = @$el.find('.phone')
		@companyFeld = @$el.find('.company')
		@bodyField = @$el.find('.body')

	handleSubmit: (e) =>
		e.preventDefault()
		@message.set(name: @nameField.val())
		@message.set(email: @emailField.val())
		@message.set(phone: @phoneField.val())
		@message.set(company: @companyFeld.val())
		@message.set(body: @bodyField.val())
		@message.save()

	handleSync: =>
		console.log 'horay, success'

	handleError: (model, error) =>
		new Itech.Views.SupportErrorView(error: error, el: @el)