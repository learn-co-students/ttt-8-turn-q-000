def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, input, value="X")
  input = input.to_i-1
  board[input] = value
  display_board(board)
end

def position_taken?(board, input)
  playerToken = "X"
  if board[input-1].include?(playerToken)
    puts "This position is already taken, please enter another value"
    turn(board)
  else
    move(board, input, "X")
  end
  return false
end

def valid_move?(board, input)
  input =  input.to_i
  if input.between?(1, 9)
     if position_taken?(board, input)
       return false
     end
  else
      puts "This number is not between 1 and 9"
      turn(board)
  end
  return true
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  valid_move?(board, input)
end
