def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move (board, position, player = "X")
   board[position.to_i - 1] = player
end

def valid_move? (board, position)
  position = position.to_i - 1
  if !position.between?(0, 9) || position_taken?(board, position)
    false
  else
    true
end
end

def position_taken? (board, position)
  if  board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif
      board[position] == "X" || board[position] == "O"
    true
end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.


def turn(board)
  puts "Please enter 1-9:"
  pick = gets.strip
    if valid_move?(board, pick)
      move(board, pick)
      puts display_board(board)
    else turn(board)
end
end