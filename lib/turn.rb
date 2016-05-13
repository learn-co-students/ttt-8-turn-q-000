def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n"
  puts "-----------\n"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n"
  puts "-----------\n"
  puts " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def move(board, position, char = "X")
  position = position.to_i - 1
  board[position] = char
end

def valid_move?(board, position)
  if position.to_i.between?(1, 9)
    if !position_taken?(board, position.to_i - 1)
      true
    end
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == ""
    return false
  elsif board[position] == nil
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end
