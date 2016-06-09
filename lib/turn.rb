def display_board(board)
  #board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
end

#def position_taken?(board, user_input, token = "X")
  #if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    #false
  #elsif (board[index] == "X") || (board[index] == "x")|| (board[index] == "O") || (board[index] == "o")
    #true
  #end
#end

def valid_move?(board, index)
  if (position_taken?(board, index) == false) && (board[index].to_i.between?(0, 8) == true) && (board[index] != nil)
    true
  else
    false
  end
end


def position_taken?(board, index, token = "X")

  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    false
  elsif (board[index] == "X") || (board[index] == "x")|| (board[index] == "O") || (board[index] == "o")
    true
  end
end

def turn(board)
  loop do
  #get input
  puts "Please enter 1-9:"
  user_input = gets.strip
  #convert input to index
  index = input_to_index(user_input)
  #if index is valid
    if valid_move?(board, index) == true
    #make the move for input
      move(board)
    else
      turn(board)
    #ask for input again until you get a valid input
    end
  end
end
