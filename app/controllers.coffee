#################################################
## CONTROLLERS
#################################################

App.ApplicationController = Em.Controller.extend
  currentUser: null

App.ProfileController = Em.ObjectController.extend
  content: null

App.ExploreController = Em.ArrayController.extend
  filters: [
    ['engineer', 'design', 'business']
    ['startup', 'established']
    ['task', 'tour', 'talk']
  ]
  rows: Ember.computed ->
    rows = []
    numPerRow = 3
    @forEach (swap, index, obj) ->
      console.log 'index, swap', index, swap
      if index % numPerRow is 0
        rows.push []
      rows[rows.length-1].push swap
    rows
  .property('content.@each.didLoad')

App.SwapsController = Em.ArrayController.extend
  tags: ['animals', 'blah', 'change', 'this']
  rows: Ember.computed ->
    rows = []
    numPerRow = 3
    @forEach (swap, index, obj) ->
      console.log 'index, swap', index, swap
      if index % numPerRow is 0
        rows.push []
      rows[rows.length-1].push swap
    rows
  .property('content.@each.didLoad')

App.SwapController = Em.ObjectController.extend
  content: null

App.EntitiesController = Em.ArrayController.extend
  filters: [
    ['engineer', 'design', 'business']
    ['startup', 'established']
  ]
  rows: Ember.computed ->
    rows = []
    numPerRow = 3
    @forEach (entity, index, obj) ->
      console.log 'index, entity', index, entity
      if index % numPerRow is 0
        rows.push []
      rows[rows.length-1].push entity
    rows
  .property('content.@each.didLoad')

App.EntityController = Em.ObjectController.extend
  content: null
