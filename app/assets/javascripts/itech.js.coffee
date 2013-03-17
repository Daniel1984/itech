window.Itech =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    d = new Itech.Views.SubscriptionIndexView()

$(document).ready ->
  Itech.initialize()
