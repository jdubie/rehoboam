App.Verse = DS.Model.extend
  _id       : DS.attr 'string'
  chapter_i : DS.attr 'number'
  description : DS.attr 'string'
  score: DS.attr 'number'

  body: Em.computed ->
    @get('description')
  .property('description')

  radius: Em.computed ->
    @get('score')
  .property('score')
