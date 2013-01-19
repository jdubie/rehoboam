transloaditTemplate =
  ':original':
    key: 'original'
  'resize-huge-rect':
    key: 'huge'
    width: 950
    height: 633
  'resize-big-rect':
    key: 'big'
    width: 650
    height: 433
  'resize-medium':
    key: 'medium'
    width: 225
    height: 225
  'resize-small':
    key: 'small'
    width: 100
    height: 100
  'resize-thumbnail':
    key: 'thumbnail'
    width: 323
    height: 200
  'resize-narrow':
    key: 'narrow'
    width: 192
    height: 3000

dimesions = {}
for key, value of transloaditTemplate
  dimesions[value.key] = {width: value.width, height: value.height}

assemblyKeys = {}
for key,value of transloaditTemplate
  assemblyKeys[key] = "image_#{value.key}"

exports.assemblyKeys = assemblyKeys

exports.placeholder = (size) ->
  val = dimesions[size]
  "/img/placeholder-#{val.width}x#{val.height}.png"
