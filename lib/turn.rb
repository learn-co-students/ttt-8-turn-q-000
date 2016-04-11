def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
  if position.to_i.between?(1,9) && (board[position.to_i - 1] == " " || board[position.to_i - 1] == "" || board[position.to_i - 1] == nil)
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  player = "X"
  if valid_move?(board,position)
    true
    move(board,position,player)
  else puts "Failed validation"
    turn(board)
  end
  display_board(board)
end

def move(board,position,player)
  board[position.to_i - 1] = player
end

