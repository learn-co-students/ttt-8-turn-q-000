def display_board(board)
	puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  position = position.pred
  if !(position_taken?(board, position)) && position.between?(0, 8)
    valid_move = true
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    position_taken = false
  else
    position_taken = true
  end
end

def move (board, input, char = "X")
  input = input.to_i
  input = input.pred
  board[input] = char
  end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    input = position
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end