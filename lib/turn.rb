def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    puts "Sorry, that move is invalid."
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
  position = position.to_i - 1
  if position < 0 || position > 8
    false
  elsif board[position] == " " || board[position] == ""
    true
  else
    false
  end
end

def move(board, position, side = "X")
  position = position.to_i - 1
  board[position] = side
  board
end