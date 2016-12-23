def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  elsif board[position] == "x" || board[position] == "X" || board[position] == "o" || board[position] =="O"
    return true
  end
end

def valid_move?(board, position)
  if position.to_i.between?(1,9) && !(position_taken?(board, position.to_i-1))
    return true
  else
    return false
  end
end

def move(board, position, player = "X")
  board[position.to_i - 1] = player
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end