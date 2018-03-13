board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts   " #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} "     
  puts              "-----------"
  puts   " #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} "
  puts              "-----------"
  puts   " #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} "   
end

def valid_move?(board, position)
  if position.to_i.between?(1, 9) && position_taken?(board, position) == false 
    return true   
  elsif (position.to_i - 1) > 9 || (position.to_i - 1) == 0
    return false
  elsif board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"   
    return false 
  end
end 

def position_taken?(board, position)
  if board[position.to_i-1] == "" || board[position.to_i-1] == " "  
    return false   
  else 
    return true
  end
end  

def move(board, position, token="X")
  board[position.to_i-1] = token 
end 

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true 
    puts move(board, position, token="X")
    puts display_board(board) 
  else 
    turn(board) 
  end 
end
