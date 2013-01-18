App.Swap = DS.Model.extend
  _id  : DS.attr 'string'
  user : DS.belongsTo 'App.User'
  entity: DS.belongsTo 'App.Entity'
  ctime: DS.attr 'date'
  title: DS.attr 'string'

  image_big: DS.attr 'string'
  image_huge: DS.attr 'string'
  image_medium: DS.attr 'string'
  image_thumbnail: DS.attr 'string'

  didLoad  : -> console.log "didLoad Swap:"  , @get('title')
  didUpdate: -> console.log "didUpdate Swap:", @get('title')
  didCreate: -> console.log "didCreate Swap:", @get('title')

# TODO: HACK!! to prevent "GET /model)s"
#       https://github.com/emberjs/data/issues/355
App.Swap.toString = -> ".Swap"
