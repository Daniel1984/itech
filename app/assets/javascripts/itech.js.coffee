window.Itech =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  init: ->
    new Itech.Views.SubscriptionIndexView()
    new Itech.Views.WorkIndexView()
    new Itech.Views.PageIndexView()
    new Itech.Views.ContactIndexView()

$(document).ready ->
  Itech.init()
