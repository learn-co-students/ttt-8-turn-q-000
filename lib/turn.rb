def display_board(board)
  puts " #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} "
  puts "-----------"
  puts " #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board,index)
  if (position_taken?(board,index) == false && index.between?(0,8) == true)
    return true
  else return false
  end
end

def position_taken?(board,index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  elsif (board[index] == "X") || (board[index] == "O")
    return true
  end
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(input=gets.strip)

		if (valid_move?(board, input) == true ) #True means it's true, its a valid move.
		  move(board, input)
		  display_board(board)
		else turn(board)
    end
end
