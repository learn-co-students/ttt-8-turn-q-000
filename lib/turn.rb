
# CORRECT
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  position = position.to_i

  if(valid_move?(board, position))
    move(board, position, "X")
    display_board(board)
  else
    turn(board)
  end
end

#CORRECT
def valid_move?(board, position)
  position = position.to_i
  position = position -= 1

  if position.between?(0, 8) != true
    return false
  elsif board[position] == " " || board[position] == "" || board[position] == nil
    return true
  else
    return false
  end

end

def move(board, position, token)
  position -= 1
  board[position] = token
end


