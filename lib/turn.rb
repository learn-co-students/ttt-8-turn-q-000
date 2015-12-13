# Define display_board that accepts a board and prints
# out the current state.
def display_board(board) 
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------" 
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i 
  if position_taken?(board, position) == false && position.between?(1, 9) then
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  position = position - 1
  if board[position] == " " || board[position] == "" or board[position] == nil then
    false
  elsif board[position] == "X" || board[position] == "O" then
    true
  end
end

# code your move method here!
def move(board, position, character = "X")
  position = position.to_i - 1
  board[position] = character
end

# code turn method here
def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position) == true then
    move(board, position, character = "X")
    display_board(board)
  else turn(board)
  end
end