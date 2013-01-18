#################################################
## CONTROLLERS
#################################################

App.ApplicationController = Em.Controller.extend
  currentUser: null

App.ProfileController = Em.ObjectController.extend
  content: null

App.SwapsController = Em.ArrayController.extend
  rows: Ember.computed ->
    rows = []
    numPerRow = 3
    @forEach (swap, index, obj) ->
      console.log 'swap, index', swap, index
      if index % numPerRow is 0
        rows.push []
      rows[rows.length-1].push swap
    rows
  .property('content.@each.didLoad')

App.SwapController = Em.ObjectController.extend
  content: null
