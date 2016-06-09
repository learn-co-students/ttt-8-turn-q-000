def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(xo)
  puts [" #{xo[0]} " + "|" + " #{xo[1]} " + "|" + " #{xo[2]} "]
  puts ["-----------"]
  puts [" #{xo[3]} " + "|" + " #{xo[4]} " + "|" + " #{xo[5]} "]
  puts ["-----------"]
  puts [" #{xo[6]} " + "|" + " #{xo[7]} " + "|" + " #{xo[8]} "]
end

# code your #valid_move? method here
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  position = board[index]
  if position == " " || position == "" || position ==nil
    return false
  elsif position == "X" || position =="O"
    return true
  end
end

def move(board, index, xo = "X")
  board[index] = xo
end

def input_to_index(input)
  input.to_i - 1
end
