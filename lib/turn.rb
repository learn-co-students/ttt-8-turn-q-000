
#displays the game board
def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

#prompts user for move, validates it, and presents updated board
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board,position) == true
    move(board,position)
    display_board(board) # if move is valid, displays move on board
  else
    puts "Invalid entry"
    turn(board)
  end
end

#makes the move on the board
def move(board,position,character="X")
  board[position.to_i - 1] = character
end

#determine if move is valid (user sleected position is in range and available)
def valid_move?(board,position)
  if position_taken?(board,position.to_i - 1) == false && position.to_i.between?(1,9)
    return true
  else
    return false
  end
end

# determine if position on the board is already occupied
def position_taken?(board,position)
  if board[position.to_i] == " " || board[position.to_i] == "" || board[position.to_i] == nil
    return false
  elsif board[position.to_i] == "X" || board[position.to_i] == "O"
    return true
  end
end
