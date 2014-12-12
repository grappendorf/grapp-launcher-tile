Polymer 'grapp-launcher-tile',

  created: ->
    @name = @getAttribute('id')
    @mouseOver = false

  colorChanged: ->
    @$.tile.style['background-color'] = @color

  mouseEnter: ->
    @$.shadow.setZ 3
    @mouseOver = true

  mouseLeave: ->
    @$.shadow.setZ 1
    @mouseOver = false

  launch: (e) ->
    e.stopPropagation()
    @fire 'grapp-launch', @name
