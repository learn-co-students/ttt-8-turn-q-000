def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if   valid_move?(board, position)
    move(board,position)
    display_board(board)

  else
    puts "Please enter again"
    turn(board)

  end
end

def valid_move?(board, position)

#if board[position.to_i-1,]
position = position.to_i-1
  if position.between?(0, 8) && !(position_taken?(board, position))
    true
  else
    false
end


end

def position_taken?(board,position)

  if  board[position] !=" " && board[position] !=""  && board[position] !=nil

    true
  else
    false
  end


end

def move(board,position,value="X")


  board[position.to_i - 1] = value
end
