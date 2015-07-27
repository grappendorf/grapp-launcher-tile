Polymer

  is: 'grapp-launcher-tile'

  properties:
    name: {type: String}
    icon: {type: String}
    faicon: {type: String}
    label: {type: String}
    color: {type: String, observer: '_colorChanged'}

  ready: ->
    @name = @getAttribute('id')
    @mouseOver = false

  _colorChanged: ->
    @$.tile.style['background-color'] = @color

  _mouseEnter: ->
    @$.tile.elevation = 3
    @mouseOver = true

  _mouseLeave: ->
    @$.tile.elevation = 1
    @mouseOver = false

  _launch: (e) ->
    e.stopPropagation()
    @fire 'grapp-launch', @name
