def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  until valid_move?(board, input)
 puts "Please enter 1-9:"
  input = gets.chomp
end
    move(board, input)
    display_board(board)
end

def display_board(board = [" "," "," "," "," "," "," "," "," "])
  line = "-----------"
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row3 = " #{board[6]} | #{board[7]} | #{board[8]} "
puts row1
puts line
puts row2
puts line
puts row3
end

def valid_move?(board, position)
  num = position.to_i - 1
  if num.between?(0,8) && (position_taken?(board, position) == false)
    return true
  else
    false
  end
end

def position_taken?(board, position)
  if board[position.to_i - 1] == " " || board[position.to_i - 1] == "" || board[position.to_i - 1] == nil
    false
  else
    true
  end
end

def move(board, position, token = "X")
  board[position.to_i - 1] = token
end