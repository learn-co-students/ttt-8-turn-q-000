def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board,position)
    move(board,position,"X")
    display_board(board)
  else
    turn(board)
  end
end

def display_board(b)
  puts " #{b[0]} | #{b[1]} | #{b[2]} \n-----------\n #{b[3]} | #{b[4]} | #{b[5]} \n-----------\n #{b[6]} | #{b[7]} | #{b[8]} "
end

def move(board,idx,token="X")
  board[idx.to_i - 1] = token
  return board
end

def valid_move?(board,position)
  position = position.to_i
  if position > 9 || position < 1
    return false
  elsif !position_taken(board,position - 1)
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken(board, position)
  position = position.to_i
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true
  end
end