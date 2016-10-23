def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if (1..9).include?(position.to_i) && !(position_taken?(board, position))
    return true
  else
    return false
  end
end

def position_taken?(board, position)
  if board[position.to_i - 1] == " " || board[position.to_i - 1] == "" || board[position.to_i] == nil
    return false
  end

  if board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
    return true
  end
end

def move(board, position, character = "X")
  board[position.to_i - 1] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == false
    puts "Please enter 1-9:"
    position = gets.strip
  else
      move(board, position)
      display_board(board)
  end
end

def valid_move?(board, position)
  if (1..9).include?(position.to_i) && !(position_taken?(board, position.to_i))
    return true
  else
    return false
  end
end

def position_taken?(board, position)
  if board[position - 1] == " " || board[position - 1] == "" || board[position - 1] == nil
    return false
  end

  if board[position - 1] == "X" || board[position - 1] == "O"
    return true
  end

end