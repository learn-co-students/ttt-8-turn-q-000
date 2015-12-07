
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if (valid_move?(board, input) == true)
    puts "valid move"
    move(board, input)
    display_board(board)
  elsif (valid_move?(board, input) == false)
    puts "invalid move"
    turn(board)
  end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



# code your move method here!
def move(board, position, player = "X")
  board[position.to_i - 1] = player
end




# helper method for valid_move?
def position_taken?(board, position)
  if (board[position] == " " || board[position] == "" || nil)
    return false
  elsif (board[position] == "X" || "O")
    return true
  end
end

# check to see if move during the turn was valid
def valid_move?(board,position)
  if (position_taken?(board, position.to_i - 1) == false) && (position.to_i.between?(1,9) == true)
  true
  else (position_taken?(board, position.to_i - 1) == true) || (position.to_i.between?(1,9) == false)
  false
  end
end