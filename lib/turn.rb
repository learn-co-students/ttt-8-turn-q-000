def display_board(spot)
  puts " #{spot[0]} | #{spot[1]} | #{spot[2]} "
  puts "-----------"
  puts " #{spot[3]} | #{spot[4]} | #{spot[5]} "
  puts "-----------"
  puts " #{spot[6]} | #{spot[7]} | #{spot[8]} "
end

def position_taken?(board, position)
  location = position.to_i
  if board[location] == "" || board[location] == " " || board[location] == nil
    false
  elsif board[location] == "X" || board[location] == "O"
    true
  end

end


def valid_move?(board, position)
  location = position.to_i - 1
  if !position_taken?(board, location) && location >= 0 && location <= 8
    true
  else
    false
  end
end

def move(board, location, character = "X")

  position = location.to_i - 1
  board[position] = character

  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position)
    move(board, position, character = "X")
  else
    turn(board)
  end
end
