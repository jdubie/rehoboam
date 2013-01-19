App.Entity = App.ImageModel.extend
  _id   : DS.attr 'string'
  user  : DS.belongsTo 'App.User'
  ctime : DS.attr 'date'
  title : DS.attr 'string'

  didLoad  : -> console.log "didLoad Entity:"  , @get('title')
  didUpdate: -> console.log "didUpdate Entity:", @get('title')
  didCreate: -> console.log "didCreate Entity:", @get('title')

# TODO: HACK!! to prevent "GET /model)s"
#       https://github.com/emberjs/data/issues/355
App.Entity.toString = -> ".Entity"
