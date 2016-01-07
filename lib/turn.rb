def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  if !position_taken?(board, position) && position.between?(1,9)
    true
  else
    false
  end
end

def position_taken?(board, position)
  position -= 1
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else
    true
  end
end

def move(board, position, char = "X")
  position -= 1
  board[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position.to_i)
    display_board(board)
  else
    turn(board)
  end
end