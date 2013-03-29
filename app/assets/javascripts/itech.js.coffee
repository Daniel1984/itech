window.Itech =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  init: ->
    new Itech.Views.SubscriptionIndexView()
    new Itech.Views.WorkIndexView()
    new Itech.Views.PageIndexView()

$(document).ready ->
  Itech.init()
