def display_board(x)
  puts " #{x[0]} | #{x[1]} | #{x[2]} "
  puts "-----------"
  puts " #{x[3]} | #{x[4]} | #{x[5]} "
  puts "-----------"
  puts " #{x[6]} | #{x[7]} | #{x[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
    true
  else
    false
  end
end

def position_taken?(board, position)
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  else
    true
  end
end

def move(board, position, token = "X")
  board[position.to_i-1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board,input)
    move(board,input)
  else
    turn(board)
  end
  display_board(board)
end