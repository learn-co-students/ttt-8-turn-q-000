# Define display_board that accepts a board and prints
# out the current state.
def display_board(board=[" "," "," "," "," "," "," "," "," "])
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
#require_relative '/home/amalamute/code/labs/ttt-6-position-taken-rb-q-000/lib/position_taken.rb'

def valid_move?(board, index)
  if (index >= 0 && index <= 8) && position_taken?(board,index) == true
    false
  elsif (index >= 0 && index <= 8) && position_taken?(board,index) == false
    true
  else
    false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
#  else puts "Invalid entry"
  end
end

# code your input_to_index and move method here!

def input_to_index(input)
  input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end


# Code your CLI Here
#puts "Welcome to Tic Tac Toe!"
#board=[" "," "," "," "," "," "," "," "," "]
#display_board(board)

#puts "Where would you like to go?"
#input = gets.strip
#index = input_to_index(input)

#move(board,index)
#display_board(board)

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  while valid_move?(board, index) == false
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end

  move(board,index)
  display_board(board)

end
