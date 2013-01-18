window.App = require 'app'

require 'helpers'
require 'models'
require 'controllers'
require 'views'
require 'router'

App.auth = App.store.find(App.Auth, "auth")
