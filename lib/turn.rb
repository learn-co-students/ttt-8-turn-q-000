def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif (index < 0 || index > 8)
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def input_to_index(input)
  input = input.to_i
  input - 1
end

def move(array, index, character="X")
  array[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  if valid_move?(board, index)
    move(array, index, character="X")
    display_board(board)
  else
    until valid_move?(board, index) == true
    turn(board)
    end
  end
end
