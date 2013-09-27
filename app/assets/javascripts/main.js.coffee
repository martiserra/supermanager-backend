# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self
#= require_tree ./services/global
#= require_tree ./services/main
#= require_tree ./filters/global
#= require_tree ./filters/main
#= require_tree ./controllers/global
#= require_tree ./controllers/main
#= require_tree ./controllers/teams
#= require_tree ./directives/global
#= require_tree ./directives/main

Supermanager = angular.module('Supermanager', [])

Supermanager.config(['$routeProvider', ($routeProvider) ->
	# Route for '/teams'
	$routeProvider.when('/teams/:teamId', { templateUrl: '../assets/teamView.html', controller: 'TeamCtrl' } )
	# Default
	$routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'IndexCtrl' } )
	
])
