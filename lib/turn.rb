def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} ",
       "-----------",
       " #{board[3]} | #{board[4]} | #{board[5]} ",
       "-----------",
       " #{board[6]} | #{board[7]} | #{board[8]} "
end  

def valid_move?(board, position)
  position = position.to_i - 1
  if position.between?(0,8) && !position_taken?(board, position)
    true
   else
    false
   end 
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
   elsif board[position] == "X" || "O"
     true      
  end
end

def move(board, position, char = "X")
  position = position.to_i - 1
  board[position] = "#{char}"
  display_board(board)
end  

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true
    move(board, position) 
  else 
    turn(board)
  end
end