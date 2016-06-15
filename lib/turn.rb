#accepts "board" as an argument and prints out current state of Board
def display_board(board)
  puts " #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} "
  puts "-----------"
  puts " #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} "
end


#Converts a User's move to the correct array index on the Board
def input_to_index(user_input)
  user_input.to_i - 1
end


#Determines if the position is already taken
def position_taken?(board, index)
  
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
    elsif board[index] == "X" || board[index] =="O"
      true
    end

end



#Determines if the User's move is Valid
def valid_move?(board, index)
  
  if index.between?(0,8) && position_taken?(board, index) == false
    true
  else
    false
  end

end





#Captures a User's move
def move(board, position, char = "X")
  board[position] = char
end




#Asking the user to take a turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == false
    turn(board)
  else
    move(board,index,"X")
    display_board(board)
  end
end



  

      





