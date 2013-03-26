class Itech.Models.TopNews extends Backbone.Model

	defaults:
		title: "Top News"
		imgUrl: "assets/work/top_news.png"
		siteUrl	: "http://top-naujienos.herokuapp.com"
		tools	: ["Backbone.js", "Node.js", "Express.js", "Github", "Heroku"]
		about	: "
			Tool, gathering the latest articles
			from most popular Lithuanian news portals.
			It is also mobile compatible - read all the news on the move. Enjoy.
		"