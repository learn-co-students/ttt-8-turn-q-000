def position_taken?(board, position)
  mod=position.to_i - 1
  board[mod] == "" || board[mod] == " " || board[mod] == nil
end

def valid_move?(board, position)
  position.to_i.between?(1,9) && position_taken?(board, position)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, symbol="X")
  mod_position = position.to_i - 1
  board[mod_position] = symbol
end

def turn(board) #, position, symbol
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position, symbol="X")
  else
    turn(board)
  end
  display_board(board)
end
