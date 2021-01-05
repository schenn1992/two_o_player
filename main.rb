require_relative "two_o_player"

player01 = Player.new("Timmy") 
player02 = Player.new("Bobby")
game = Game.new(player01, player02)

game.play_game

