def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(arr, pos, mark="X")
  arr[pos.to_i - 1] = mark
end

# code your #valid_move? method here
def valid_move?(board, pos)
  if pos.to_i.between?(1, 9) && !position_taken?(board, pos)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, pos)
  if board[pos.to_i - 1] == "X" || board[pos.to_i - 1] == "O"
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  until valid_move?(board, input)
    puts "Move not valid.  Try again:"
    input = gets.strip
  end
  move(board, input)
  display_board(board)
end