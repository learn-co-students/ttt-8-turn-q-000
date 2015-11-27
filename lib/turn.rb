
board = ["","","","","","","","",""]

def display_board(board) 
    puts "  #{board[0]} |  #{board[1]} |  #{board[2]} "
    puts "-----------"
    puts "  #{board[3]} |  #{board[4]} |  #{board[5]} "
    puts "-----------"
    puts "  #{board[6]} |  #{board[7]} |  #{board[8]} "
end
display_board(board)

#valid_move?
def valid_move?(board, position)
  move = position.to_i - 1
  if move.between?(0 , 8) 
    if !position_taken?(board, position.to_i - 1)
      true
  else
    false
    end
  end

end


def position_taken?(board, position)
  if board[position] == (" ") || board[position] == ("") || board[position] == nil
    false
  elsif board[position] == ("X") || board[position] == ("O") 
    true
  end
end

#move

def move(board, location, value = "X")
  board[location.to_i-1] = value

end

def turn(board)
  puts "Please enter 1-9:"
  
end
