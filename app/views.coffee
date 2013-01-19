#################################################
## VIEWS
#################################################

App.ApplicationView = Em.View.extend
  didInsertElement: -> @$().hide().fadeIn('slow')
  templateName: require 'templates/application'

App.HomeView = Em.View.extend
  didInsertElement: -> @$().hide().fadeIn('slow')
  templateName: require 'templates/home'
  testFoo: (a,b) ->
    this.get('controller').set('link', a.context)

App.ExploreView = Em.View.extend
  templateName: require 'templates/explore'

App.SwapView = Em.View.extend
  templateName: require 'templates/swap'

App.SwapsView = Em.View.extend
  templateName: require 'templates/swaps'

App.SwapThumbnailView = Em.View.extend
  templateName: require 'templates/swap_thumbnail'

App.EntitiesView = Em.View.extend
  templateName: require 'templates/entities'

App.EntityThumbnailView = Em.View.extend
  templateName: require 'templates/entity_thumbnail'

App.EntityView = Em.View.extend
  templateName: require 'templates/entity'

App.NavbarView = Em.View.extend
  templateName: require 'templates/navbar'

App.ProfileView = Em.View.extend
  templateName: require 'templates/profile'
