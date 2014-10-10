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

  currentScore: (player) ->
    player.score

  _findWinner: ->
    _.find(@players, (player) => @currentScore(player) is 10)
