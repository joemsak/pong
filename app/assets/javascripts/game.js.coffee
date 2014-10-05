window.Game = class Game
  started: false

  start: ->
    @started = true

  quit: ->
    @started = false
