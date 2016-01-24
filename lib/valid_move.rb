def position_taken?(board,position)
  if   board[position] == "X" || board[position] == "O"
     true
  else board[position] == " " || board[position] ==  "" || board[position] ==  nil
     false
  end
end

def valid_move?(board,position)
  position1 = position.to_i - 1
  if    position_taken?(board,position1) == true || (( 1..8 ) === position1) == false && board[position1] != " " || position1 < 0 || position.to_f != position.to_i  #this got really slopy, new def required
      false
  else  position_taken?(board,position1) == false && position1.between?(2, 8) == true
      true
  end
end

#******************************************************************************
# no space is allowed
# position_taken? (board,position)
#                ^
#http://stackoverflow.com/questions/8541733/syntax-error-unexpected-expecting

# the between method and (( 1..8 ) === position)
#allows negitive numbers, and 0 ????
#still allows floats...
