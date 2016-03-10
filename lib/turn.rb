def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  if position_taken?(board, position - 1) == false && position.between?(1, 9)
    true
  else position_taken?(board, position - 1) == true || position > 9
    false
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else board[position] == "X" || board[position] == "O"
    true
  end
end

def move(board, position,  value = "X")
  board[position.to_i - 1] = value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true
     move(board, position, value = "X")
     display_board(board)
  else valid_move?(board, position) == false
    turn(board)
  end

end


