def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, value= 'X')
  position = position.to_i - 1
  board[position] = value
end

def position_taken?(array, value)
  if ((array[value] == " ") || (array[value] == "") || (array[value] == nil))
    return false
  else
    return true
  end
end

def valid_move?(board, position)
  position = position.to_i - 1       # this is showing up in too many places - but the test expects it here for now
  if (!position_taken?(board, position) && position.between?(0,8))
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  #position = gets.strip.to_i - 1     remove this line from #move & #valid_move? should only be one place, not repeated
  puts "Position: #{position}, valid: #{valid_move?(board, position)}"
  until valid_move?(board, position) do
    puts "Invalid move. Please enter 1-9:"
    position = gets.strip.to_i  # add - 1 once code is removed from valid_move?
    puts "Position: #{position}, valid: #{valid_move?(board, position)}"
  end
  move(board, position)
  display_board(board)
end
