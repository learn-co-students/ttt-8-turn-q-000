def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!

def move(board, input, value="X")
  input = input.to_i-1
  board[input] = value
  display_board(board)
end

board = [" "," "," "," "," "," "," "," "," "]

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, input)
  playerToken = "X"
  if board[input-1].include?(playerToken)
    puts "This position is already taken, please enter another value"
    turn(board)
    return false
   else
    move(board, input, "X")
  end
  return true
end

def valid_move?(board, input)
  input =  input.to_i
  if input.between?(1, 9)
      position_taken?(board, input)
    else
      puts "This number is not between 1 and 9"
      turn(board)
    end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  valid_move?(board, input)
end
