def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  !position_taken?(board, position.to_i - 1) && (position.to_i - 1).between?(0, 8) ? true : false
end

def position_taken?(board, position)
  board[position] == nil || board[position] == " " || board[position] == "" ? false : true
end

def move(board, position, char = "X")
 board[position.to_i - 1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board,input)
  else
    turn(board)
  end
  display_board(board)
end