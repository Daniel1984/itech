class Itech.Views.SubscriptionIndexView extends Backbone.View
  
  el: ".subscriber"
  events:
    'submit': 'handleSubscription'
    'focusin #subscriber': 'clearField'

  initialize: ->
    @subscriber = new Itech.Models.Subscriber()
    @subscriber.on('sync', @success)
    @subscriber.on('error', @error)
    @btnSubmit = @$el.find('.btn-subscribe')
    @btnRss = @$el.find('.icon-rss')
    @btnSpinner = @$el.find('.icon-spinner')
    @inputField = @$el.find('#subscriber')
    @ctrlGroup = @$el.find('.control-group')
    @btnSpinner.hide()
    
  handleSubscription: (e) =>
    e.preventDefault()
    @toggleInputAndBtn(true)
    @btnSpinner.show()
    @btnRss.hide()
    @subscriber.set(email: @inputField.val())
    @subscriber.save()
    
  clearField: (e) =>
    e?.preventDefault()
    @ctrlGroup.removeClass('error')
    @ctrlGroup.removeClass('success')
    @inputField.val('')
    
  success: =>
    @subscriber.clear()
    @btnSpinner.hide()
    @btnRss.show()
    @toggleInputAndBtn(false)
    @ctrlGroup.addClass('success')
    @inputField.val('Thank you for subscribing!')
    
  error: (model, err) =>
    @toggleInputAndBtn(false)
    @btnSpinner.hide()
    @btnRss.show()
    errorMsg = $.parseJSON(err.responseText).email[0]
    @ctrlGroup.removeClass('success')
    @ctrlGroup.addClass('error')
    @inputField.val(errorMsg)
    
  toggleInputAndBtn: (bullean) =>
    @btnSubmit.attr('disabled': bullean)
    @inputField.attr('disabled': bullean)