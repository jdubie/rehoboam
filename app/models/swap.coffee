App.Swap = App.ImageModel.extend
  _id  : DS.attr 'string'
  user : DS.belongsTo 'App.User'
  entity: DS.belongsTo 'App.Entity'
  ctime: DS.attr 'date'
  title: DS.attr 'string'

  didLoad  : -> console.log "didLoad Swap:"  , @get('title')
  didUpdate: -> console.log "didUpdate Swap:", @get('title')
  didCreate: -> console.log "didCreate Swap:", @get('title')
