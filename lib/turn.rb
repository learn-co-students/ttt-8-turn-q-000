def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  index = position.to_i
  index.between?(1,9) && !position_taken?(board, position)
end

def position_taken?(board, position)
  index = position.to_i
  board[index-1] == "X" || board[index-1] == "O"
end

def move(board, position, token = "X")
  board[position-1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input.to_i)
    display_board(board)
  else
    turn(board)
  end
end
