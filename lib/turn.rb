def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
end

def position_to_index(position)
  position.to_i - 1
end

def valid_move?(board, position)
    index = position_to_index(position)
    position_empty = !position_taken?(board, index)
    if index.between?(0, 8) && position_empty
      return true
    end
 end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  index = position_to_index(position)
  if valid_move?(board, position)
  move(board, index, token = "X")
  display_board(board)
    else
  turn(board)
  end
end




