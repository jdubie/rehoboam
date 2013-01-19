images = require 'helpers/images'

App.ImageModel = DS.Model.extend
  image_big: DS.attr 'string'
  image_huge: DS.attr 'string'
  image_medium: DS.attr 'string'
  image_thumbnail: DS.attr 'string'

  imgSrcBig: Ember.computed ->
    image = @get('image_big')
    image = images.placeholder 'big' unless image
    image
  .property 'image_big'
  imgSrcHuge: Ember.computed ->
    image = @get('image_huge')
    image = images.placeholder 'huge' unless image
    image
  .property 'image_huge'
  imgSrcMedium: Ember.computed ->
    image = @get('image_medium')
    image = images.placeholder 'medium' unless image
    image
  .property 'image_medium'
  imgSrcThumbnail: Ember.computed ->
    image = @get('image_thumbnail')
    image = images.placeholder 'thumbnail' unless image
    image
  .property 'image_thumbnail'
