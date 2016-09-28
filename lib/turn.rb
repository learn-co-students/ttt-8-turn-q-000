def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp

  if valid_move?(board, position)
    move(board, position)
  else
    turn(board) 
  end

  display_board(board)
end


# HELPERS

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  # adjusting index -1 for user perspection
  position = position.to_i - 1
  if position.between?(0, 8) && !position_taken?(board, position)
    return true
  else
    return false
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil 
    return false
  else
    return true
  end
end

def move(board, position, token = "X")
  position = position.to_i - 1
  board[position] = token
end