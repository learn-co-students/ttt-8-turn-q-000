
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  valid = valid_move?(board, input)
  if !valid
    turn(board)
  end
  move(board, input, char = "X")
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)

  position = position.to_i - 1

  if position > -1 && position < 8
    validation1 = true
  else
    validation1 = false
  end

  validation2 = position_taken?(board, position)

  if validation1 && validation2
    valid = true
  else
    valid = false
  end
  valid
end

def position_taken?(board, position)

  if board[position] ==  "" or board[position] == " " or board[position] == nil
    value = true
  else
    value = false
  end
  value
end

def move(board, position, char = "X")
  position = position.to_i - 1
  board[position] = char
end