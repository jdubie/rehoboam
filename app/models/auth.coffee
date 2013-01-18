App.Auth = DS.Model.extend
  _id   : DS.attr('string', defaultValue: 'auth')
  user  : DS.belongsTo 'App.User'
  roles : DS.attr('array', defaultValue: [])
  # for login
  email: DS.attr 'string'
  password: DS.attr 'string'
  do_logout: DS.attr('boolean', defaultValue: false)

  login: (email, password) ->
    @set('email', email)
    @set('password', password)
    @set('do_logout', false)
    App.store.commit()

  logout: ->
    @set('do_logout', true)
    @set('email', null)
    @set('password', null)
    App.store.commit()

  isLoggedIn: Ember.computed ->
    @get('user')?
  .property 'user'
  isAdmin: Ember.computed ->
    roles = @get('roles') ? []
    'constable' in roles
  .property 'roles'

  didLoad  : -> console.log "didLoad Auth:"  , @get('user')
  didUpdate: -> console.log "didUpdate Auth:", @get('user')
  didCreate: -> console.log "didCreate Auth:", @get('user')

# TODO: HACK!! to prevent "GET /model)s"
#       https://github.com/emberjs/data/issues/355
App.Auth.toString = -> ".Auth"
