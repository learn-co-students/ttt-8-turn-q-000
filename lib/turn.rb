
# Displays Board

def display_board(board)

   puts  " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "

end

# Make the Move

def move(board, choice ,char = "X")

  board[choice.to_i-1] = char
  display_board(board)
end

# Check if valid move?

def valid_move?(board, i)

  if board[i.to_i-1] == "X" || board[i.to_i-1] == "O" || i.to_i < 1 || i.to_i > 9

    valid = false

  else
    valid = true

  end

end

# Take a Turn

def turn(board)

  puts "Please enter 1-9:"
  choice = gets

  if valid_move?(board, choice) == true
  puts "valid Move"
    move(board, choice, char = "X")
  else
  puts "Try Again Dummie"
    turn(board)
  end





end


