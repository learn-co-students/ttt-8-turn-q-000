board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
display_board(board)


def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
     false
  else true
  end

end


def valid_move?(board, position)
 location = position.to_i - 1
  if position_taken?(board, location) == true || location.between?(0,9) == false
    return false
  else
    return true
  end

end

def move(board, location,player = "X")
  board[location.to_i-1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  if valid_move?(board, input)
    move(board,input.to_i)
    display_board(board)
  else
    turn(board)
  end
end