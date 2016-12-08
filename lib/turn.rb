#helper methods for a players turn

#display_board prints the current board
def display_board(board)
  current_board = " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
  puts current_board
end

#input_to_index turns the players input into the board index
def input_to_index(input)
  index = input.to_i
  index -= 1
end

#valid_move checks that the position is not taken by another player and that the input is a valid number
def valid_move?(board, index)
  if index.between?(0, board.count - 1) && position_taken?(board, index) == false
    true
  else
    false
  end
end

#position_taken checks to make sure the position is not taken by another player
def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else
    true
  end
end

#move sets the token for the player in their chosen position
def move (board, index, token = "X")
    board[index] = token
end

#turn prompts user input for a new turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, token = "X")
    display_board(board)
  else
    turn(board)
  end
end
