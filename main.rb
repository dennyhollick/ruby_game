require './questions'
require './game'
require './player'

p1 = Player.new("Rohit")
p2 = Player.new("Denny")
question = Question.new
game = Game.new(p1, p2)
game.start_round(question)