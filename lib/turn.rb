def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, position)
  if !position.to_i.between?(1, 9)
    false
  elsif position_taken?(board, position)
    false
  else
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == "X" || board[position] == "O"
    true
  elsif board[position] == "" || board[position] == " " || board[position] == nil
    false
  end
end

def move(board, position, player = "X")
  position = position.to_i - 1
  board[position] = player
end

def turn(board)
  puts "Please enter 1-9:"
  move = gets.strip.to_i
  valid_move?(board, move.to_s)
  while !move.between?(1,9) || position_taken?(board, move)
    puts "Please enter 1-9:"
    move = gets.strip.to_i
  end
  move(board, move)
  display_board(board)

end
