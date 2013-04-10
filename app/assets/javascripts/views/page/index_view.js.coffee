class Itech.Views.PageIndexView extends Backbone.View

  el: '.navbar'
  events:
    'click .home'    : 'handleSlide'
    'click .services': 'handleSlide'
    'click .tools'   : 'handleSlide'
    'click .work'    : 'handleSlide'
    'click .contact' : 'handleSlide'

  initialize: ->
    @defaultOffset = 100
    @homeSectionOffset = @defaultOffset - 300

  handleSlide: (e) =>
    e.preventDefault()
    targetClassName = $(e.currentTarget).attr('class')
    offsetY = @calculateOffset(targetClassName)
    destination = $("a##{targetClassName}")
    @slidePage(destination, offsetY)

  calculateOffset: (className) =>
    if className == 'home'
      @homeSectionOffset
    else
      @defaultOffset
    
  slidePage: (destination, offsetY) =>
    $('body,html').animate({
      scrollTop: destination.offset().top + offsetY
    }, 600)
