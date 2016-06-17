def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    position = gets.strip
    index = input_to_index(position)
    if valid_move?(board, index)
      move(board, index, value="X")
      display_board(board)
      break
    end
  end
end

def input_to_index(position)
  index = position.to_i
  index = index - 1
  return index
end

def move(board, index, value="X")
  board[index] = value
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  else
    if position_taken?(board, index)
      return false
    else
      return true
    end
  end
end
