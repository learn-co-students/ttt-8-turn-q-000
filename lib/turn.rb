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

def valid_move?(board, index)
  if (position_taken?(board, index) == false) && (index.between?(0, 8) == true)
    true
  end
end


def position_taken?(board, index, token = "X")
  board[index] != " "
end

def testturn(board)
  puts "Please enter 1-9:"
  #get input
  user_input = gets.strip
  #convert input to index
  input_to_index(user_input)
  #if index is valid
    if valid_move?(board, index) == true
    #make the move for input
      move(board)
    else
      turn(board)
    #ask for input again until you get a valid input
    end
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
      break
    else
      turn(board)
      break
    end
  end
end

def move(board, index, token = "X")
  board[index] = token
end
