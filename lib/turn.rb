def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
 board[position] != "" || board[position] == " "
 if board[position] == "" || board[position] == " "
  false
   elsif board[position] == "X" || board[position] == "O"
   true
   elsif board[position] == nil
   false
 end
end

def valid_move?(board, position)
  position = position.to_i
  position -= 1
  (position.between?(0,8)) && !(position_taken?(board, position))
  end


def move (board, position, token)
  position = position.to_i
  position -= 1
  board[position] = "#{token}"
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position)
    move(board, position, "X")
    display_board(board)
  else turn(board)
end
end