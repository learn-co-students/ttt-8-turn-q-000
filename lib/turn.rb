def move (board, position, token = "X")
  board[position.to_i - 1] = token
end


#To check if the move is valid overall
def valid_move? (board, position)
 
  if position.to_i.between?(1, 9) == false
    return false
  elsif  position_taken?(board, position) == true  
    return false
  else 
    return true
  end
end



#To check if the position is taken
def position_taken? (board, position)
  if board[position.to_i - 1] == " " || board[position.to_i - 1] == "" || board[position.to_i - 1] == nil 
    return false
  else 
    return true
  end
end

#To display the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  while valid_move?(board, position) == false
    puts "That is not a valid move."
    puts "Please enter 1-9."
    position = gets.chomp
  end
  move(board, position, "X")
  display_board(board)
  
end
