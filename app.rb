require 'bundler'
Bundler.require

require './lib/app/Application'
require './lib/app/BoardCase'
require './lib/app/Board'
require './lib/app/Game'
require './lib/app/Player'
require './lib/app/Show'

puts ' __'
puts '|        Welcome!        |'
puts "| Let's play Tic tac Toe!|"
puts '|__|'
print '|Player 1 name : '
name1 = gets.chomp

print '|Player 2 name : '
name2 = gets.chomp

puts '|__|'
puts '|      Lets start!       |'
puts '|__|'
puts '|Type 1 for X and 0 for O|'
puts '| Player 1 chose X or O  |'
print '-->>'

p1_chose = gets.chomp
if p1_chose == 0
  p1_chose = 'X'
else
  p2_chose = 'O'
end

player1 = Player.new(name1, p1_chose)
player2 = Player.new(name2, p2_chose)

puts "|      #{player1.name} chose -> #{p1_chose}      |"
puts "|     #{player2.name} Stays with -> #{p2_chose}  |"
puts '|__|'
puts '|   Beginning the game!  |'
puts '|__|'
puts ' '

# n_chosed = gets.chomp
# board[0] = 'X' if n_chosed == 1
default_board = Board.new
while default_board.is_end? == false
  default_board.display
  default_board.play_turn1(player1)
  break if default_board.victory? == true

  winner = player1
  default_board.display
  default_board.play_turn2(player2)
  break if default_board.victory? == true

  winner = player2
end
puts "The Winner is #{winner.name}"
puts '|      Going to Sleep!!      |'
