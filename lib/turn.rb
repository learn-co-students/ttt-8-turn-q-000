def display_board
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  if position.between?(1, 9) && !position_taken?(board, position)
    return true
  else
    return false
  end
  

end


def position_taken?(board, position)
  position = position - 1
  if board[position] == " " || board[position] == ""
    return false
  elsif board[position] == nil
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true
  end

end

def move(board, position, char = "X")
  return board[position.to_i - 1] = char 
end


def turn (board)
  puts "Please enter 1-9:"
  position = gets.strip
  if !valid_move?(board, position)
      turn(board)
  else move(board, position, char = "X")
      display_board(board)
    end
end

