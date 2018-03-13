def display_board(board)
  separator = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "#{separator}"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "#{separator}"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  unless position.to_i.between?(1,9)
    return false
  end

  index = position.to_i - 1

  if position_taken?(board[index])
    return false
  else
    return true
  end

end

def position_taken?(cell)
  if cell == " " || cell == "" || cell == nil
    return false
  elsif cell == "X" || cell == "O"
    return true
  end
end

def move(board, position, character = "X")
  index = position.to_i - 1
  board[index] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position)
    display_board(move(board, position))
  else
    turn(board)
  end
end
