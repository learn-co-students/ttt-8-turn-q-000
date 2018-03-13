#board array variable
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
position = position.to_i - 1

#display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move? method
def valid_move?(board, position)
position = position.to_i - 1
  
  if (position.between?(0, 8) ? true : false) && (position_taken?(board, position) == false)
    true

  else position_taken?(board, position) == true
    false
 
  end
end


#position_taken? method
def position_taken?(board, position)

  if (board[position] == "X") || (board[position] == "O") ? true : false
    true
    
  elsif
    board.any? {" "}
    false

  
  end

end

#move method
def move(board, position, token= "X")
  position = position.to_i - 1
  update_array_at_with(board, position, token)
end

#update_arrray_at_with method
def update_array_at_with(board, position, token)
  board[position] = token
end

#turn method
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board,position) ? true : false
     move(board, position, token = "X")
     display_board(board)
     
  else
    puts "That spot does not exist. Try again, b!"
    turn(board)
  end

  

end


