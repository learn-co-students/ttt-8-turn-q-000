#HELPER METHODS
#--------------

#Should accept a board as an argument and print out the current state of the board for the user.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  #position.to_i!
  position -= 1

  if position_taken?(board, position) || !position.between?(0, 8)
    #invalid move
    return false
  else
    #valid move
    return true
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end
end

def move(board, location, character="X")
  board[location.to_i - 1] = character
end

#TURN LOOP METHOD
#----------------
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  
  until valid_move?(board, input)
    puts "Invalid. Please enter 1-9:"
    input = gets.strip
  end

  move(board, input)
  display_board(board)
end