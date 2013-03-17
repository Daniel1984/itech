class Itech.Views.SubscriptionIndexView extends Backbone.View
  
  el: ".subscriber"
  events:
    'submit': 'handleSubscription'

  initialize: ->
    @subscriber = new Itech.Models.Subscriber()
    
  render: ->
    @$el.html()
    @
    
  handleSubscription: (e) ->
    e.preventDefault()
    @emailFieldValue = @$el.find('#subscriber').val()
    @subscriber.set(email: @emailFieldValue)
    @subscriber.save()