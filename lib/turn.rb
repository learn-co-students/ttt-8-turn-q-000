#display board definition
def display_board(board=[" "," "," "," "," "," "," "," "," "])
  def dash
    puts "-----------"
  end
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  dash
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  dash
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#convert input to index
def input_to_index(input)
  index = input.to_i
  index-1
end

#method to check if position has been taken or not
#input from user is called "index"
def position_taken?(board, index)
  #index = input_to_index(input)
  if (board[index] == " ") || (board[index] == nil) || (board[index] == "")
    false
  elsif board[index] == "X" || "O"
    true
  end
end

#method to check if the move is valid
def valid_move?(board, index)
  #index = input_to_index(input)
  if (position_taken?(board, index) == false) && (index.between?(0,8))
    true
  else
    false
  end
end

def move(board, index, token="X")
  #index = input_to_index(input)
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, token="X")
    display_board(board)
  else
    turn(board)
  end
end
