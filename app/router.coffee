App = require 'app'
debug = require('debug') 'DEBUG router'

#App.Route = Em.Router.extend
#  rootUrl: '/'
#  enableLogging: true
#  location: 'history'

App.Router.map (match) ->
  match('/').to('home')
  match('/swaps').to('swaps')
  match('/swaps/:swap_id').to('swap')

App.HomeRoute = Em.Route.extend {}

App.SwapsRoute = Em.Route.extend
  setupControllers: (controller) ->
    controller.set('swaps', App.store.findAll(App.Swap))

App.SwapRoute = Em.Route.extend
  setupControllers: (controller, swap) ->
    controller.set('content', swap)
