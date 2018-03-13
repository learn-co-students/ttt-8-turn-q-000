def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "

end


def position_taken?(board, position)
  location = position.to_i
  if board[location] == " "
    false
   elsif board[location] == ""
    false
   elsif board[location] == nil
    false
    else
    true
  end
end



def valid_move?(board, position)
index = position.to_i - 1

if position_taken?(board, index) == true
   false
elsif (0..8).cover?(index) == true
  return true
  else
  false
end
end


def move(board, input, xoro = "X")
location = input.to_i - 1
board[location] = xoro
end

def turn(board)
puts "Please enter 1-9:"
position = gets.strip
  if valid_move?(board, position) == true
    move(board, position, xoro = "X")
    display_board(board)
  else
  turn(board)
  end
end

