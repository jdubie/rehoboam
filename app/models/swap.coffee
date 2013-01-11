App.Swap = DS.Model.extend
  _id   : DS.attr 'string'
  ctime : DS.attr 'date'
  title : DS.attr 'string'

  image_big: DS.attr 'string'
  image_huge: DS.attr 'string'
  image_medium: DS.attr 'string'
  image_thumbnail: DS.attr 'string'

  didLoad  : -> console.log "didLoad Swap:"  , @get('url')
  didUpdate: -> console.log "didUpdate Swap:", @get('title')
  didCreate: -> console.log "didCreate Swap:", @get('title')