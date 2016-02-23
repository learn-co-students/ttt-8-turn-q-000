def valid_move?(board, position)
    
    position = position.to_i

    if position.between?(1 , 9) and !position_taken?(board, position)
      
      return true
      
    else
      return false
    end
end


def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == " " || board[position] == "" || board[position] == nil
     return false

  else
    return true
  end
 end

def display_board(board)

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def move(board, position, value )
  
  board[position.to_i - 1] = value.upcase

end

def turn(board)
  puts "Please enter 1-9:"
 position = gets.strip

if valid_move?(board, position) 
  move(board, position, value = "X")
  display_board(board)
else 
  puts "Invalid input"
  turn(board)
  
end
end