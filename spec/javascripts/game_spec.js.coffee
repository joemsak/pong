#= require game

describe Game, ->
  it 'has not started', ->
    game = new Game
    expect(game.started).to.be.false

  it 'can be started', ->
    game = new Game
    game.start()
    expect(game.started).to.be.true

  it 'can be quit', ->
    game = new Game
    game.start()
    game.quit()
    expect(game.started).to.be.false
