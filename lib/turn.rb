def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input) == false
    puts "Invalid entry."
    turn(board)
  else
    move(board, input)
    display_board(board)
  end
end

def move(array, input, char = "X")
  array[input.to_i - 1] = char
end

def valid_move?(board, position)
  stringChecker = position.to_i
  realPosition = position.to_i - 1
  if stringChecker == 0 || position_taken?(board, realPosition) == true
    return false
  else
   return true
  end
end

def position_taken?(board, position)
  if board[position] == "" || board[position] == " " || board[position] == "  "
    return false
  elsif board[position] == "X" || board[position] = "O" || board[position] == nil
    return true
  end
end