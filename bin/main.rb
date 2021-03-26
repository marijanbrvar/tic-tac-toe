#!/usr/bin/env ruby
board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def display_board(board)
  puts '+---+---+---+'
  puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
  puts '+---+---+---+'
  puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
  puts '+---+---+---+'
  puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
  puts '+---+---+---+'
end

puts 'Lets play some Tic Tac Toe'
puts
puts '.::First Player::.Please Enter Your Name: '
player1 = gets.chomp.capitalize
puts "Welcome #{player1} your symbol is X "
puts
puts '.::Second Player::. Please Enter Your Name: '
player2 = gets.chomp.capitalize
puts "Welcome #{player2} your symbol is O "
puts
puts
puts "#{player1} vs #{player2}"
display_board(board)
puts
game_over = false
until game_over
  puts "It is your turn #{player1}, position your Symbol on board"
  move = gets.chomp
  while move.empty?
    puts 'Enter an available board number'
    move = gets.chomp
  end
  board[move.to_i - 1] = 'X'
  display_board(board)
  puts "It is your turn #{player2}, position your Symbol on board"
  move = gets.chomp
  while move.empty?
    puts 'Enter an available board number'
    move = gets.chomp
  end
  board[move.to_i - 1] = 'O'
  display_board(board)
  game_over = true if board.none?(Integer)
end

puts display_board(board)

puts "This game between #{player1} & #{player2} it TIE"
print 'Do you want to play again(y/n)? '
again = gets.chomp
print again
print 'How about New game with new player (y/n)? '
new = gets.chomp
print new
