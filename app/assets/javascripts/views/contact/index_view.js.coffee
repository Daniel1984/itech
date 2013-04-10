class Itech.Views.ContactIndexView extends Backbone.View
	el: '.contact-container'

	events:
		'click .submit-btn': 'handleSubmit'

	initialize: ->
		@disableBtnSpinner()
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
		@enableBtnSpinner()
		@message.set(name: @nameField.val())
		@message.set(email: @emailField.val())
		@message.set(phone: @phoneField.val())
		@message.set(company: @companyFeld.val())
		@message.set(body: @bodyField.val())
		@message.save()

	handleSync: (model, res) =>
		model.clear()
		@disableBtnSpinner()
		@clearAllFields()
		@notifyUserAboutSuccess()

	handleError: (model, error) =>
		@disableBtnSpinner()
		new Itech.Views.SupportErrorView(error: error, el: @el)

	disableBtnSpinner: =>
		@disableSubmit(false)
		@$el.find('.icon-spin').hide()
		@$el.find('.send-txt').show()

	enableBtnSpinner: =>
		@disableSubmit(true)
		@$el.find('.icon-spin').show()
		@$el.find('.send-txt').hide()

	clearAllFields: =>
		@nameField.val('')
		@emailField.val('')
		@phoneField.val('')
		@companyFeld.val('')
		@bodyField.val('')

	notifyUserAboutSuccess: =>
		@$el.find('.btn-danger').removeClass('btn-danger').addClass('btn-success')
		@$el.find('.send-txt').text('Sent!')
		setTimeout(@revertSubmitBtn, 1500)

	revertSubmitBtn: =>
		@$el.find('.btn-success').removeClass('btn-success').addClass('btn-danger')
		@$el.find('.send-txt').text('Send')

	disableSubmit: (bool) =>
		@$el.find('button').attr(disabled: bool)