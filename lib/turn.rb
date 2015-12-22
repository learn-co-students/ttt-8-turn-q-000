def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position)
    move(board, position)
  else
    turn(board)
  end

  display_board(board)
end 

# code your #valid_move? method here
def valid_move?(board, position)
  if position.to_i.between?(1, 9) == false || position_taken?(board, position)
    false
  elsif position.to_i.between?(1, 9) && position_taken?(board, position) == false
    true
  end
end 

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position.to_i-1] == " " || board[position.to_i-1] == "" || board[position.to_i-1] == nil
    false
  elsif board[position.to_i-1] == "X" || board[position.to_i-1] == "O"
    true
  end
end

# Define display_board that accepts a board and prints out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, position, player = "X")
  board[position.to_i-1] = player
end