window.Itech =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  initialize: -> 
    new Itech.Views.SubscriptionIndexView()
    new Itech.Views.WorkIndexView()

$(document).ready ->
  Itech.initialize()
  @
