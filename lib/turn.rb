def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == "" || board[position] == " " || board[position] == nil
      return false
   elsif board[position] == "X" || board[position] == "O"
      return true
  end
end

def valid_move?(board, position)
   position = position.to_i-1
  if position.between?(0,8) && !position_taken?(board, position)
    return true
   else
    return false
  end
end

def move(board, position, token='X')
  position = position.to_i-1
  board[position]=token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets

  if valid_move?(board, user_input)
    return true
  else
    turn(board)
  end
end
