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
		sscModel = new Itech.Models.Ssc()
		@renderModalView(sscModel)

	showTopNewsInfo: (e) =>
		e.preventDefault()
		topNewsModel = new Itech.Models.TopNews()
		@renderModalView(topNewsModel)

	showTalkToMeInfo: (e) =>
		e.preventDefault()
		talkToMeModel = new Itech.Models.TalkToMe()
		@renderModalView(talkToMeModel)

	showAvismaInfo: (e) =>
		e.preventDefault()
		avismaModel = new Itech.Models.Avisma()
		@renderModalView(avismaModel)

	showBizmagicInfo: (e) =>
		e.preventDefault()
		bizlogicModel = new Itech.Models.Bizlogic()
		@renderModalView(bizlogicModel)

	showRomastaInfo: (e) =>
		e.preventDefault()
		romastaModel = new Itech.Models.Romasta()
		@renderModalView(romastaModel)

	showBetaInfo: (e) =>
		e.preventDefault()
		betaModel = new Itech.Models.Beta()
		@renderModalView(betaModel)		

	renderModalView: (model) =>
		modal = new Itech.Views.SupportModalView(model: model)
		@$el.append(modal.el)