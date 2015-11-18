def turn(board)
  puts "Please enter 1-9:"
  capture_puts = gets
  if valid_move?(board, capture_puts)
     move(board, capture_puts)
     else turn(board)
  end
  display_board(board)
end

#prints arbitrary arrangements of board

board = [" ", " ", " ", " ", " "," ", " ", " ", " "]

def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#returns true/false based on  position
def valid_move?(board, position)
  if position.to_i.between?(1,9)
    if !position_taken?(board, position.to_i-1)
      true
    end
end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, location)
  board[location] != " "
end

#allows "X" player in the bottom right and "O" in the top left
def move(board, location, gamer = "X")
  board[location.to_i-1] = gamer
end


