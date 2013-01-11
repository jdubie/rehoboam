#################################################
## CONTROLLERS
#################################################

App.ApplicationController = Em.Controller.extend
  currentUser: null

App.ProfileController = Em.ObjectController.extend
  content: null

App.SwapsController = Em.Controller.extend
  swaps: null
  rows: (() ->
    # TODO figure out how to group these into rows of three
    #console.log 'here', @get('swaps')
  ).property('swaps')
