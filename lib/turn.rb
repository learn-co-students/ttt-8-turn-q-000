def display_board(board)
  puts "Welcome to Tic Tac Toe!"
  puts ""
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, player)
  board[position-1] = player
  display_board(board)
end

def valid_move?(board, position)
  valid_move = false
  position = position.strip.to_i
  if (position >= 1 && position <= 9)
    valid_move = true
  else
    valid_move = false
    puts "Sorry, your move must be between 1 and 9."
    return valid_move
  end

  if (board[position-1]=="" || board[position-1]==" " || board[position-1]==nil)
    valid_move = true
  else
    valid_move = false
    puts "Sorry, that position is not available."
    return valid_move
  end
  return valid_move
end

def turn(board)
  puts "Please enter 1-9:"
  position_input = gets
  while (valid_move?(board,position_input)==false) do
    puts "Please make another selection."
    position_input = gets
  end
  move(board,position_input.to_i,"X")
end



