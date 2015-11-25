def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, pos)
  pos = pos.to_i - 1 
  if !position_taken?(board, pos) && ((0..8).include? pos)
    return true
  else
    return false
  end
end

def position_taken? (board, pos)
  test = /^[xo]$/i
  if board[pos] =~ test
    return true
  else
    return false 
  end
end

def move (board, pos, mark="X")
  board[pos-1] = mark
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  if !valid_move?(board, input)
    turn(board)
  else
    move(board, input.to_i)
    display_board(board)
  end
end
