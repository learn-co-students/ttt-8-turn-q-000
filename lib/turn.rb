def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position_taken?(board,position)
end

def position_taken?(board, position)
  if board[position.to_i-1] == "X" || board[position.to_i-1] == "O"
    false
  elsif (position.to_i-1).between?(0,9) && board[position.to_i-1] == " "
    true
    end
end

def move(board, position, token = "X")
  board[position.to_i - 1] = token
  display_board(board)
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
  else
    turn(board)
  end
end


