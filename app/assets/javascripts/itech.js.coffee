window.Itech =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    new Itech.Views.SubscriptionIndexView()

$(document).ready ->
  Itech.initialize()
  @
