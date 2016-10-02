#turn
require 'pry'


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(arg)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  if valid_move?(arg, user_input)
    move(arg, user_input, value = "X")
  else
    puts "Please enter 1-9"
    user_input = gets.chomp
  end
  display_board(arg)
end

def valid_move?(gameboard, position)
  if position.to_i.between?(1,9)
    if !position_taken?(gameboard, position.to_i-1)
      true
    end
  end
end

def position_taken?(gameboard, position)
  gameboard[position] != " "
end

def move(array, index, value = "X")
  array[index.to_i - 1]=value
end
