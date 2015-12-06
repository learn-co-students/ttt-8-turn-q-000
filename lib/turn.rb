def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  while !valid_move?(board, input)
    puts "Please enter 1-9:"
    input = gets.strip
  end
  move(board, input)
  display_board(board)
end

def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def valid_move?(board, position)
  if position == "invalid"
    return false
  end
  position = position.to_i
  if position - 1 > 8
    return false
  elsif position_taken?(board, position - 1)
    return false
  else
    return true
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end
end

def move(board, position, mark="X")
  board[(position.to_i)-1] = mark
end