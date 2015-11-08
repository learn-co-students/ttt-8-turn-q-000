

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position)
    move(board, position, token = "X")
  else
    turn(board)
  end
  display_board(board)
end


def move(board, position, token = "X")
  board[position.to_i - 1] = token
end


def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end


def position_taken?(board, position)
  taken = nil
  if (board[position] == " " || board[position] == "" || board[position] == nil)
    taken = false
  elsif board[position] == "X" || board[position] == "O"
    taken = true
  end
  taken
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
