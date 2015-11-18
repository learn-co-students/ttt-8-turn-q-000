def display_board(board) 
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   line = "-----------"
   puts line
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts line
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  adjusted_position = position.to_i - 1
  if adjusted_position.between?(0, 8)
    !(position_taken?(board, adjusted_position))
  else
    false
  end
end

def position_taken?(board, position)
  !(board[position] == " " || board[position] == "" || board[position] == nil)
end

def move(board, position, token = "X")
  board[position.to_i - 1] = token
  board
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    display_board(move(board, position))
  else
    turn(board)
  end
end