def display_board(board)

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts " ----------- "
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts " ----------- "
puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def move (board, position, current_player= "X")
  board[position.to_i-1] = current_player 
end


def position_taken?(board,position)
   board[position] != " " && board[position] != "" 

end

def valid_move?(board,location)
  location.to_i.between?(1,9) && !position_taken?(board,location.to_i-1)  
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
    else 
      turn(board)
end

display_board(board)
end






