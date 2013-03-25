class Itech.Views.WorkIndexView extends Backbone.View
  
	el: ".work-container"
	events:
		'click .ssc'				: 'showSscInfo'
		'click .top-news'		: 'showTopNewsInfo'
		'click .talk-to-me'	: 'showTalkToMeInfo'
		'click .avisma'			: 'showAvismaInfo'
		'click .bizlogic'		: 'showBizmagicInfo'
		'click .romasta'		: 'showRomastaInfo'
		'click .beta'				: 'showBetaInfo'

	initialize: ->

	showSscInfo: (e) =>
		e.preventDefault()
		console.log 'ssc info'

	showTopNewsInfo: (e) =>
		e.preventDefault()
		console.log 'news info'

	showTalkToMeInfo: (e) =>
		e.preventDefault()
		console.log 'talk to me'

	showAvismaInfo: (e) =>
		e.preventDefault()
		console.log 'avisma'

	showBizmagicInfo: (e) =>
		e.preventDefault()
		console.log 'bizmagic'

	showRomastaInfo: (e) =>
		e.preventDefault()
		console.log 'romasta'

	showBetaInfo: (e) =>
		e.preventDefault()
		console.log 'betainfo'

