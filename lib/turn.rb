def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  i = position.to_i - 1
  return false if i > 8 || i < 0
  return true if position_taken?(board,i) == false
end

def position_taken?(board, position)
  return true if board[position] == "X" || board[position] == "O"
  return false
end

def move(board,location,char="X")
  board[location.to_i - 1] = char
  board
end

def turn(board)
  #input = -1
  valid = false
  #until input > 0 && input < 10 do
  until valid == true do
    puts "Please enter 1-9:"
    input = gets.chomp
    valid = valid_move?(board, input)
  end
  display_board(move(board, input))
end