def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, space, team = "X")
  board[space.to_i - 1] = team
end
def valid_move?(board, input)
  taken = true
  if position_taken?(board, input.to_i - 1)
    taken = false
  end
  if !input.to_i.between?(1,9)
    taken = false
  end
  taken
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, input)
  taken = false
  if board[input] == "X" || board[input] ==  "O"
    taken = true
  end
  taken
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
  else
    status = "invalid"
    turn(board)
  end
  display_board(board)
end