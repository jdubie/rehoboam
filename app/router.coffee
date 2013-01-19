App = require 'app'
debug = require('debug') 'DEBUG router'

App.Router.map (match) ->
  @route 'explore'
  @resource 'swaps'
  @resource 'swap', path: '/swaps/:swap_id'
  @resource 'entities'
  @resource 'entity', path: '/entities/:entity_id'
  @route 'profile'

#App.IndexRoute = Em.Route.extend {}

App.ExploreRoute = Em.Route.extend
  model: -> App.Swap.find()

App.SwapsRoute = Em.Route.extend
  model: -> App.Swap.find()

#App.SwapRoute = Em.Route.extend {}

App.EntitiesRoute = Em.Route.extend
  model: -> App.Entity.find()

#App.EntityRoute = Em.Route.extend {}

App.ProfileRoute = Em.Route.extend
  model: -> App.auth.get 'user'
