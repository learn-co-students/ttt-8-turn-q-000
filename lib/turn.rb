def turn(board)
  puts 'Please enter 1-9:'
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
  else
    puts 'invalid move'
    turn(board)
  end
  display_board(board)
end

def valid_move?(board, position)
  if position.to_i.between?(1, 9) && !position_taken?(board, position.to_i - 1)
    true
  else
    false
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else
    true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, character = 'X')
  board[position.to_i - 1] = character
end