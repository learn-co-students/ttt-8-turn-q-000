#1. Ask the player for their move by position 1-9
#2. Receive the user input
#3. Convert the position to an index
#4. If the move is valid, make the move and display the board to the user
#5. If the move in invalid, ask for a new move until a valid move is received


def display_board(move)
  puts " #{move[0]} ""|"" #{move[1]} ""|"" #{move[2]} "
  puts "-----------"
  puts " #{move[3]} ""|"" #{move[4]} ""|"" #{move[5]} "
  puts "-----------"
  puts " #{move[6]} ""|"" #{move[7]} ""|"" #{move[8]} "
end

#index = input_to_index(input)

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0,8)
end

def move(board, index, char="X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp

  index = input_to_index(input)

  good_to_go = valid_move?(board, index)
  until good_to_go == true
    turn(board)
    break
  end
  move(board,index,char="X")
  display_board(board)
end
