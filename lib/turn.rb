def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[0] == " " || board[0] == "" || board[0] == nil
    false
  elsif board[0] || board[8] == ("X" || "O")
    true
  end
end

board = ["X", " ", " ", " ", " ", " ", " ", " ", " "]

def valid_move?(board, position)
  true_position = board[(position.to_i)-1]
  if true_position != "X" && true_position != "O" && position.to_i.between?(1,9)
    return true
  else
    return false
  end
end


def move(board, position, value = "X")
  board[position=position.to_i-1] = value
end

def turn(board)
  puts "Please enter 1-9:"
  turn = gets
  unless valid_move?(board, turn)
    turn = gets
  end
   move(board, turn, "X")
display_board(board)
end

 



