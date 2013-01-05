# Ember Bootstrap
This is a simple ember skeleton for [Brunch](http://brunch.io/) with working and up to date **handlebars template pre-compilng** :)
- Ember.js (new router API)
- Ember Data
- Handlebars
- Bootstrap w/ Less

## Getting started

```
# clone repo
git clone git@github.com:jdubie/ember-bootstrap.git

# add twitter bootstrap
git submodule init
git submodule update

# install dependencies
npm install

# compile project
brunch build
```

Once the project has been created, you can start a server by running

    brunch watch --server

then visit `localhost:3333`


* `config.coffee` contains your app configuration. This is where you configure what Plugins / Languages to use and what rules are applied to them.
* `app/` and subdirectories (excluding `app/assets`) contains files that are to be compiled. Javascript files, or files that compile to JS (coffeescript, roy etc.), are automatically wrapped as commonjs style modules so they can be loaded via `require('module/location')`.
* `app/assets` contains images / static files. The contents of the directory are copied to `public/` without any modification.
* `app/templates.js`, `app/models.js`, `app/views.js`, and `app/controllers.js` are loaded in `initialize.js` and are responsible for loading their respective classes.
* `test/` contains unit tests.
* `vendor/` contains all third-party code. The code wouldn’t be wrapped in
modules, it would be loaded instantly instead.

The generated output is placed in the `public/` (by default) directory when `brunch build` or `brunch watch` is executed.
