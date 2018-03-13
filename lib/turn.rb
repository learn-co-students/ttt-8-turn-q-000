def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else
    true
  end
end

def valid_move?(board, position)
  if !position_taken?(board, position.to_i-1) && position.to_i > 0 && position.to_i < 10
    true
  else
    false
  end
end

def move(board, position, player="X")
  board[position.to_i-1] = player
end

def turn(board, player="X")
  puts "Please enter 1-9:"
  my_move = gets.strip
  if valid_move?(board, my_move)
    move(board, my_move, player)
  else
    puts "Sorry, that is not a valid move."
    turn(board, player)
  end
  display_board(board)
end