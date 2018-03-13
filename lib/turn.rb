def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def position_taken?(board, position)
  if board[position] == " "
    return false

  elsif board[position] == ""
    return false
  
  elsif board[position] == "X" || board[position] == "O"
    return true
  
  else
    return false
  end
end

def valid_move?(board, position)
  if position.to_i.between?(1, 9) && position_taken?(board, position.to_i-1) == false
    return true
  else 
    return false
  end
end


def move(board, position, value = "X")
  position = position.to_i - 1
  board[position] = value
  return board[position]
end


#turn method instructions
def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position) == true
    move(board, position, value = "X")
    display_board(board)
  else
    turn(board)
  end
end



#ask the u ser for their move by position 1-9




#display the board after the valid move has been made





