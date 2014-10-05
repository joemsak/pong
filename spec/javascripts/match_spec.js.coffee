#= require game
#= require player
#= require match

describe Match, ->
  it 'starts the game', ->
    game = new Game
    players = [new Player, new Player]

    new Match(game, players)

    expect(game.started).to.be.true

  it 'scores points for players', ->
    game = new Game
    players = [new Player, new Player]
    match = new Match(game, players)

    match.scorePoint(players[0])
    expect(players[0].score).to.equal 1

    match.scorePoint(players[1])
    expect(players[1].score).to.equal 1

  it 'quits the game and declares a winner after a player scores 10 points', ->
    game = new Game
    players = [new Player, new Player]
    match = new Match(game, players)

    match.scorePoint(players[0]) for [1..10]

    expect(game.started).to.be.false
    expect(match.winner).to.equal players[0]
