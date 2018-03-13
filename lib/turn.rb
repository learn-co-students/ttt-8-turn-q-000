  def display_board(board = [" "," "," "," "," "," "," "," "," "])
    puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n"+
         " #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n"+
         " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def valid_move?(board, position)
  if position.to_i.between?(1, 9) != true
    return false
  elsif position_taken?(board, position)
    return false
  else board[position.to_i - 1] == " "
    return true
  end
end

def position_taken?(board, position)
  if board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
    return true
  end 
end

def move(board, position, char="X")
  board[position.to_i-1] = char
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