App.User = App.ImageModel.extend
  _id: DS.attr 'string'
  ctime: DS.attr 'date'
  first_name: DS.attr 'string'
  last_name: DS.attr 'string'

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
