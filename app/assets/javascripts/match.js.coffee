#= require underscore

window.Match = class Match
  constructor: (game, players) ->
    @game = game
    @players = players
    @game.start()

  scorePoint: (player) ->
    player.addPoint()
    @winner = @_findWinner()
    @game.quit() if @winner isnt undefined

  _findWinner: ->
    _.find(@players, (player) -> player.score is 10)
