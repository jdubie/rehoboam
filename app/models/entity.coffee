App.Entity = DS.Model.extend
  _id   : DS.attr 'string'
  ctime : DS.attr 'date'
  title : DS.attr 'string'

  image_big: DS.attr 'string'
  image_huge: DS.attr 'string'
  image_medium: DS.attr 'string'
  image_thumbnail: DS.attr 'string'

  didLoad  : -> console.log "didLoad Entity:"  , @get('title')
  didUpdate: -> console.log "didUpdate Entity:", @get('title')
  didCreate: -> console.log "didCreate Entity:", @get('title')

# TODO: HACK!! to prevent "GET /model)s"
#       https://github.com/emberjs/data/issues/355
App.Entity.toString = -> ".Entity"
