def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board,input) == true
    move(board, input, "X")
  elsif valid_move?(board,input) == false
    turn(board)
  end
end

def valid_move?(board,position)
  position = position.to_i
  return true if (position.between?(1, 9) == true && position_taken?(board, position) == true)
  return false if (position.between?(1, 9) == false || position_taken?(board, position) ==  false)
end

def position_taken?(board, position)
  return true if (board[position-1] == " " || board[position-1] == "" || board[position-1] == nil)
  return false if (board[position-1] == "X" || board[position-1] == "O")
end

def move(array, position, value = "X")
  position = position.to_i
  array[position-1] = value
  display_board(array)
end

def display_board(moves_array)
  puts " #{moves_array[0]} | #{moves_array[1]} | #{moves_array[2]} "
  puts "-----------"
  puts " #{moves_array[3]} | #{moves_array[4]} | #{moves_array[5]} "
  puts "-----------"
  puts " #{moves_array[6]} | #{moves_array[7]} | #{moves_array[8]} "
end