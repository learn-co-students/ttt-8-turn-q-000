# Write the Method to Display the Tic Tac Toe Board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Code to ask for the customers turn
def move(board, user_position, position_token = "X")
  user_move = user_position.to_i - 1
  board[user_move.to_i] = position_token
end

# code your #valid_move? method here
def valid_move?(board, position)
  if position.to_i.between?(1,9) && !position_taken?(board,position)
      true
    else
      false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, location)
  if board[location.to_i-1].nil? || board[location.to_i-1] == "" || board[location.to_i-1] == " "
    false
  else
    true
  end
end
# takes in the user input and validates the user input 
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board,input)
    move(board,input)
  else
    turn(board)
  end
  display_board(board)
end