def valid_move? (board,position)
  pos = position.to_i
  if ((pos).between?(1,9)) && !position_taken?(board,pos-1)
    return true
  else
    return false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, position)
  pos = position.to_i
  if board[pos] == " " || board[pos] == "" || board[pos] == nil
    return  false
  elsif board[pos] == "X" || board[pos] == "O"
    return true
  end
end

def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, symbol = 'X')
  board[position.to_i-1] = symbol
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board,position)
    move(board, position, symbol ='X')
  else
    turn(board)
  end
  display_board(board)
end


