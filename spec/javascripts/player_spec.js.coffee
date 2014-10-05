#= require player

describe Player, ->
  it 'starts with a score of 0', ->
    player = new Player
    expect(player.score).to.equal 0

  it 'adds points to their score', ->
    player = new Player
    player.addPoint()
    expect(player.score).to.equal 1
