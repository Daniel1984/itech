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
    @btnSubmit.attr('disabled': true)
    @inputField.attr('disabled': true)
    @btnSpinner.show()
    @btnRss.hide()
    @subscriber.set(email: @inputField.val())
    @subscriber.save()
    
  clearField: (e) =>
    e.preventDefault()
    @ctrlGroup.removeClass('error')
    @ctrlGroup.removeClass('success')
    @inputField.val('')
    
  success: =>
    @btnSpinner.hide()
    @btnRss.show()
    @ctrlGroup.addClass('success')
    @inputField.val('Thank you for subscribing!')
    
  error: (model, err) =>
    @btnSubmit.attr('disabled': false)
    @inputField.attr('disabled': false)
    @btnSpinner.hide()
    @btnRss.show()
    errorMsg = $.parseJSON(err.responseText).email[0]
    @ctrlGroup.addClass('error')
    @inputField.val(errorMsg)