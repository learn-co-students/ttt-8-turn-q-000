
def valid_move?(board, position)
  if !(position.to_i > 9 || position.to_i < 1) && !position_taken?(board, position)
    return true
  else
    return false
  end
end


def position_taken? (board, position)
  if board[position.to_i-1] == " " || board[position.to_i-1] == "" || board[position.to_i-1] == nil
    return false
  elsif board[position.to_i-1] == "X" || board[position.to_i-1] == "O"
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def move(board, position, char = "X")

  position = position.to_i - 1

  board[position] = char
  board
end

def turn(board)
puts "Please enter 1-9:"
input = gets.strip

until valid_move?(board, input)
  puts "Please enter 1-9:"
  input = gets.strip
end
  move(board, input)
  display_board(board)
end