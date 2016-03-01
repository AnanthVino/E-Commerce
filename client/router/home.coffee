Router.map ->
	@route "home",
	path: "/home"
	layoutTemplate: "header_layout"
	template: "homepage"
	# onBeforeAction: [Router.filters.mustLogin]