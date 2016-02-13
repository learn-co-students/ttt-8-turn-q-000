def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position_taken?(board, position) && position.to_i.between?(1,9)
    true
  else false
  end
  end


def position_taken?(board, position)
  if board[position.to_i - 1] == "" || board[position.to_i - 1] == " "
    true
  else false
  end
end

def move(board, position, marker = X)
  board[position.to_i - 1] = marker
end

def turn(board)
  puts "Please enter 1-9:"
  until valid_move?(board, gets.strip)
    turn(board)
end
end
