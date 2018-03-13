
def display_board(board)
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def valid_move?(board, position)
  numerical_position = position.to_i

  if numerical_position.between?(1, 9) && position_taken?(board, numerical_position)
    true
  else
    false
  end
end

def position_taken?(board, numerical_position)

  board[numerical_position - 1] == " "

end

def move(board, numerical_position, token = "X")

  board[numerical_position - 1] = token

end

def turn(board)
  puts "Please enter 1-9:"

  position = gets.strip
  numerical_position = position.to_i

  if valid_move?(board, position)

    move(board, numerical_position)
    display_board(board)
  else
    turn(board)
  end
end







