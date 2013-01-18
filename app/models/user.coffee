App.User = DS.Model.extend
  _id: DS.attr 'string'
  ctime: DS.attr 'date'
  first_name: DS.attr 'string'
  last_name: DS.attr 'string'

  image_big: DS.attr 'string'
  image_huge: DS.attr 'string'
  image_medium: DS.attr 'string'
  image_thumbnail: DS.attr 'string'

  didLoad  : -> console.log "didLoad User:"  , @get('first_name')
  didUpdate: -> console.log "didUpdate User:", @get('first_name')
  didCreate: -> console.log "didCreate User:", @get('first_name')

  fullName: Ember.computed ->
    first = @get 'first_name'
    last  = @get 'last_name'
    if first and last
      "#{first} #{last}"
    else if not last
      first
    else
      last
  .property 'first_name', 'last_name'

# TODO: HACK!! to prevent "GET /model)s"
#       https://github.com/emberjs/data/issues/355
App.User.toString = -> ".User"
