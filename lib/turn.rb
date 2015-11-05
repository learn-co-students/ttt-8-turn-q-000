def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end


def valid_move?(board, position)
  if position.to_i.between?(1,9) and !position_taken?(board, position)
    return true
  else
    return false
end
end


 def position_taken?(board, position)
  if (board[position.to_i-1] ==  " " || board[position.to_i-1] == "" || board[position.to_i-1] == nil)
   return false
  else
   return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input= gets.chomp
  current_player= "X"
  if valid_move?(board, input)
    move(board, input, current_player)
    display_board(board)
else
  turn(board)
end
end
