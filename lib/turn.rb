def display_board(board = [" "," "," "," "," "," "," "," "," "])
  row_seperator = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row_seperator
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row_seperator
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  !(board[position] == " " || board[position] == "" || board[position] == nil)
end

def valid_move?(board, position)
  int_position = position.to_i
  int_position.between?(1, 9) && position_taken?(board, int_position - 1) == false
end

def move(board, position, character = "X")
  board[position.to_i - 1] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    puts "You entered an invalid move."
    turn(board)
  end
end