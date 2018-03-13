def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
  else
    puts "Please enter 1-9:"
    position = gets.strip
  end
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  #convert the user's string input to an integer
  position = position.to_i
  #convert the user's 1-9 position to the correct array position
  position = position - 1

  #check to verify the position is on the board
  if position.between?(0,8)
    #the position is on the board, check if it is taken
    if position_taken?(board, position)
      #the position is taken so it is not valid
      false
    else
      #the position is not taken so it is valid
      true
    end
  else
    #the position is not on the board
    false
  end
end

def position_taken?(board, position)
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  elsif board[position] == "X"
    true
  elsif board[position] == "O"
    true
  end
end

def move(board, position, character = "X")
  index = position.to_i - 1
  board[index] = character
end