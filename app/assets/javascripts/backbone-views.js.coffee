class DemoApp
	constructor: ->
		@demo_app = new Backbone.Marionette.Application()
		@demo_app.addInitializer ->
			Backbone.history.start()

	start: ->
		@demo_app.addRegions(demo_app_container: "#main-region")
		@router = new Router()
		@demo_app.start()

class Router extends Backbone.Marionette.AppRouter

	routes:
		'*defaultRoute': 'default_route'

	default_route: () ->
		alert("test")




$(document).ready () ->
	demo_app =  new DemoApp()
	demo_app.start()