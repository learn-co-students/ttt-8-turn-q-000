# code your #valid_move? method here

def turn (board)
  puts "Please enter 1-9:"
  position = gets

  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end

def move (board, position, side = "X")
  position = position.to_i
  position -= 1
  board[position] = side
end

def valid_move? (board, position)
  position = position.to_i
  if position < 1 || position > 9
    false
  else
    !position_taken?(board, position)
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  position = position - 1
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end