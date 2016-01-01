def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  if valid_move?(board, input)
    move(board, input, value="X")
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  spot = position.to_i
  
  if (spot-1).between?(0,8) && position_taken?(board, position)
    true
  elsif (spot-1).between?(0,8) && position_taken?(board, position) == false
    false
  end
end

def position_taken?(board, position)
  spot = position.to_i
  if board[spot-1] == " " || board[spot-1] == "" || board[spot-1] == nil
    return true
  else
    return false
  end
end

def move(board, input, value="X")
  board[input.to_i-1] = value
  display_board(board)
end