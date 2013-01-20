svgWidth = 500
svgHeight = 500

App.IndexView = Em.View.extend
  svg: null
  didInsertElement: ->
    @$().hide().fadeIn('slow')

    svgWidth = 500
    svgHeight = 500
    svg = d3.select("#viz")
      .append("svg")
      .attr("width", svgWidth)
      .attr("height", svgHeight)
    @set('svg', svg)

  templateName: require 'templates/index'

  createVisualization: (() ->
    return if @get('controller').get('content').get('isUpdating')

    svg = @get('svg')
      
    center =
      x: svgWidth / 2
      y: svgHeight / 2

    # bubbles!!
    defs = svg.append('svg:defs')
    defs.append('svg:radialGradient')
      .attr("id", "radial")
      .attr("cx", "50%")
      .attr("cy", "50%")
      .attr("r", "50%")
      .attr("fx", "50%")
      .attr("fy", "50%")
      .call (gradient) ->
        gradient.append("svg:stop")
          .attr("offset", "0%")
          .attr("style", "stop-color:rgb(255,255,255); stop-opacity:0")
        gradient.append("svg:stop")
          .attr("offset", "100%")
          .attr("style", "stop-color:rgb(54,175,167); stop-opacity:1")

    showDetails = (data, id, elem) =>
      @get('controller').set('hover', data.id)
    hideDetails = (data, id, elem) =>
      @get('controller').set('hover', false)

    createCircle = (x, y, r) ->
      svg.append("circle")
        .style("fill", "url(#radial)")
        .attr("r", r)
        .attr("cx", x)
        .attr("cy", y)
        .on("mouseover", (d,i) -> showDetails(d, i, this))
        .on("mouseout", (d,i) -> hideDetails(d, i, this))

    collection = @get('controller').get('content')
    console.log collection.mapProperty('radius')

    maxAmount = d3.max(collection.mapProperty('radius'))
    minAmount = d3.min(collection.mapProperty('radius'))
    radius_scale = d3.scale.pow().exponent(0.5).domain([Math.min(0,minAmount), maxAmount]).range([2, 85])

    cnodes = collection.map (c) ->
      data =
        id: c.get('id')
        x: Math.random() * center.x
        y: Math.random() * center.y
        radius: radius_scale(c.get('radius'))
      createCircle(data.x, data.y, data.radius)
      data

    ######################
    ### Animate them
    ######################
    #damper = 0
    #_charge = (d) ->
    #  -Math.pow(d.radius, 2.0) / 8

    #move_towards_center = (alpha) ->
    #  (d) ->
    #    d.x = d.x + (center.x - d.x) * .12 * alpha
    #    d.y = d.y + (center.y - d.y) * .12 * alpha

    #circles = d3.selectAll('circle')
    #  .data(cnodes)

    #force = d3.layout.force()
    #  .nodes(cnodes)
    #  .size([250, 250])

    #force.gravity(-.01)
    #  .charge(_charge)
    #  .friction(0.9)
    #  .on "tick", (e) =>
    #    circles.each(move_towards_center(e.alpha))
    #      .attr("cx", (d) -> d.x)
    #      .attr("cy", (d) -> d.y)
    #      #force.start()

  ).observes('controller.content.isUpdating')
