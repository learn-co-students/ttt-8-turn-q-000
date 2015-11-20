# defining helper methods for the #turn method (at the bottom)

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position.to_i - 1] == " " || board[position.to_i - 1] == "" || board[position.to_i - 1] == nil
    false
  else
    true
  end
end

def valid_move?(board, position)
  if position.to_i.between?(1, 9) && !position_taken?(board, position)
    true
  else
    false
  end
end

def move(board, position, token="X")
  position = position.to_i
  board[position - 1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
  else
      turn(board)
  end
  display_board(board)
end


