App = require 'app'
debug = require('debug') 'DEBUG router'

#App.Route = Em.Router.extend
#  rootUrl: '/'
#  enableLogging: true
#  location: 'history'

App.Router.map (match) ->
  match('/').to('home')
  match('/explore').to('explore')
  match('/swaps').to('swaps')
  match('/swaps/:swap_id').to('swap')
  match('/entities').to('entities')
  match('/entities/:entity_id').to('entity')

App.HomeRoute = Em.Route.extend {}

App.ExploreRoute = Em.Route.extend
  setupControllers: (controller) ->
    controller.set('content', App.store.findAll(App.Swap))

App.SwapsRoute = Em.Route.extend
  setupControllers: (controller) ->
    controller.set('content', App.store.findAll(App.Swap))

App.SwapRoute = Em.Route.extend
  setupControllers: (controller, swap) ->
    controller.set('content', swap)

App.EntitiesRoute = Em.Route.extend
  setupControllers: (controller) ->
    controller.set('content', App.store.findAll(App.Entity))

App.EntityRoute = Em.Route.extend
  setupControllers: (controller, entity) ->
    controller.set('content', entity)

