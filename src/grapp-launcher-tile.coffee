Polymer

  is: 'grapp-launcher-tile'

  properties:
    name: {type: String}
    icon: {type: String}
    faicon: {type: String}
    label: {type: String}
    color: {type: String, observer: '_colorChanged'}

  ready: ->
    @name = @getAttribute('id') unless @name
    @_mouseOver = false

  _colorChanged: ->
    @$.tile.style['background-color'] = @color

  _mouseEnter: ->
    @$.tile.elevation = 3
    @_mouseOver = true

  _mouseLeave: ->
    @$.tile.elevation = 1
    @_mouseOver = false

  _launch: (e) ->
    e.stopPropagation()
    @fire 'grapp-launch', @name
