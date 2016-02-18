    def turn(board)
      puts "Please enter 1-9:"
      position = gets.strip
    end

def display_board(board) #Should accept a board as an argument and print out the current state of the board for the user
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + "#{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + "#{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + "#{board[8]} "

end

def valid_move (board, position) #Should accept a board and a position from the user and return true if the position is within the correct range of 1-9 and is currently unoccupied by an X or O token.
position = position.to_i - 1
  if !position.between?(1,8) || position_taken?(board, position)
    false
  else
    true
  end
end

def move #This method should accept a board, a position from the user (which will be in the 1-9 format), and a token to mark that position with (you can give that argument a default value of 'X'––we're not worrying about whose turn it is yet). The method should set the correct index value of that position within the board equal to the token.
end

def position_taken?(board, position) #check if a position is occupied in its own method
  if board[position] == nil || board[position] == "" || board[position] == " "
    false
  elsif board[position] == "X" || board[position] == "O" || board[position] == "0"
    true
  end
end