def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, position)
  if position.is_a? String
    position = position.to_i
  end
  if position.between?(1, 9) && !position_taken?(board, position)
    true
  else
    false
  end   
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

# code your move method here!
def move(board, input, player = "X")
  input = input.to_i
  input -= 1
  board[input] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  input = input.chomp
  if !valid_move?(board, input)
    turn(board)
  end
  move(board, input)
  display_board(board)
end