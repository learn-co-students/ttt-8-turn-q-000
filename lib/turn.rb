#display the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#run a turn
def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if !valid_move?(board, position)
    turn(board)
    else
    move(board, position)
    display_board(board)
  end
end

# code your #valid_move? method here
def valid_move?(board, position)


  if !position.to_i.between?(1,9) || position_taken?(board, position.to_i - 1)
    false
  else
    true
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == " " || (board[position] == "" || board[position] == nil)
    false
    elsif board[position] == "X" || board[position] == "O"
    true
  end
end

# code your move method here!
def move(board, location, char = "X")
  board[location.to_i - 1] = char
  return board
end
