
def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end




# code your #move_taken? method here!
# def position_taken?(board, position)
#  move = "move".to_i
#  if (board[move] === " ") || (board[move] === nil) || (board[move] === "")
#   false
# else
#   true
#   end

# end


def position_taken?(board, position)
  move = position.to_i
  if board[move] == " "
    false
   elsif board[move] == ""
    false
   elsif board[move] == nil
    false
    else
    true
  end
end


def valid_move?(board, position)
index = position.to_i - 1

if position_taken?(board, index) == true
   false
elsif (0..8).cover?(index) == true
  return true
  else
  false
end
end



def move(board, input, play = "X")
location = input.to_i - 1
board[location] = play
end


def turn(board)
puts "Please enter 1-9:"
position = gets.strip
  if valid_move?(board, position) == true
    move(board, position, play = "X")
    display_board(board)
  else
  turn(board)
  end
end

