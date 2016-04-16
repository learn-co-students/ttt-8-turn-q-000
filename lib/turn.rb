#code for display_board

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  line = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#code for valid_move?
def valid_move?(board, input)
  move = input.to_i
   if (move.between?(1,9)) && (position_taken?(board, input) == false)
     true
   else
     false
   end
end

# code for #position_taken?
def position_taken?(board, input)
  if (board[input.to_i - 1] == "X") || (board[input.to_i - 1] == "O")
    true
  else
    false
  end
end


#code for move

def move(board, input, char = "X")
    board[input.to_i - 1] = char
end

#code for turn

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip

  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
      puts "Invalid move."
  turn(board)
  end
end