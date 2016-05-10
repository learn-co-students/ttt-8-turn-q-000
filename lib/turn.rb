def display_board(board)
  devider = "-----------"
  temp_board = board.map {|b| " #{b} "}
  puts temp_board[0..2] * "|"
  puts devider
  puts temp_board[3..5] * "|"
  puts devider
  puts temp_board[6..8] * "|"
end

def move(board, pos, player = "X")
  board[pos.to_i - 1] = player
  board
end

def valid_move?(board, pos)
  if pos.to_i.between?(1,board.length) && !position_taken?(board, pos.to_i)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, pos)
  if board[pos-1] == " " || board[pos-1] == "" || board[pos-1] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts 'Please enter 1-9:'
  answer = gets.strip
  while !valid_move?(board, answer)
    puts 'Please enter 1-9:'
    answer = gets.strip
  end
  if board.count("X") > board.count("O")
    move(board, answer,"O")
  else
    move(board, answer)
  end
  display_board(board)
end
