def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board,index)
    return false
  elsif index.between?(0,8)
    return true
  else
    return nil
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board_array, index, character="X")
  board_array[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip.to_i
  index = input_to_index(position)
  if valid_move?(board, index)
    move(board, index)
  else
    puts "Please try again:"
    position = gets.strip.to_i
  end
  display_board(board)

end
