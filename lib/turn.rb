def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
board = [" "," "," "," "," "," "," "," "," "]


def valid_move?(board, position)
  if position.to_i.between?(1,9)
    if !position_taken?(board, position.to_i-1)
      true
    end
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  board[position] != " "
end
valid_move?(board, 2)
display_board(board)

def move(board, position, char=  "X")
  board[position.to_i - 1] = char.upcase
end

def turn(board)
  display_board(board)
puts "Please enter 1-9:"
  user_input = gets.strip
  valid = valid_move?(board, user_input)
  if !valid
    display_board(board)
  puts "That was invalid.  Please enter 1-9"
  user_response = gets.strip
  end
  current_move = move(board, user_input)

display_board(board)
end 