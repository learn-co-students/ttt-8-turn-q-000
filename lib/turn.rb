def turn(board)

#ask user for input
puts "Please enter 1-9:"
#define position as input
position = gets.strip
#if position is valid make move
  if valid_move?(board, position)
    move(board, position, token = "X")
    display_board(board)
#else repeat turn
  else
    turn(board)
  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end




# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, position)
  if (board[position] == " " || board[position] == "" || board[position] == nil)
    false
  else
    true
  end 
end

def move(board, position, token = "X")
  board[position.to_i-1] = token
end