grapp-launcher-tile
===================

This Web Component displays a tile that can, for example, be used to launch other parts of your
application. It contains a title and an information area and fires an event when the user has
clicked somewhere in the tile. The tile is lifted if the user hovers over it.

You can specify the title by either setting the *label* and *icon* attributes or by passing a
light DOM element with class *title*.

You can specify an info line by passing additional light DOM elements.

Compatible with Polymer 1.0+


Properties
==========

  * **name**

    - *type:* string
    - *default:* The value of the *id* attribute

    This name will be sent as the event detail of the *grapp-launch* event.


  * **label**

    - *type:* string
    - *default:* ''

    Will be displayed in the title area of the tile.


  * **icon**

    - *type:* string
    - *default:* ''

    Displays a *core-icon* next to the label. You also need to import *core-icon.html*.


  * **faicon**

    - *type:* string
    - *default:* ''

    Displays a *grapp-fa-icon* next to the label. You also need to import *grapp-fa-icon.html*.


  * **color**

    - *type:* CSS color string
    - *default:* '' (default background color #4285F4)

    You can either set the tile background color by setting this attribute or by overriding the
    CSS *background-color* property:

    `#tileelem /deep/ #title { background-color: red }`


  * **glow**

    - *type:* CSS styling attribute
    - *default:* Disabled

    If you add the *glow* attribute to a *grapp-launcher-tile*, the icon and text will be displayed
    in glowing style, when the tile is hovered with the mouse.


Events
======

  * **grapp-launch**

    - *detail:* *name* attribute

    Is fired when the tile was clicked.
