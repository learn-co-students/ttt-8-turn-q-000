def display_board(board)
  line = "-----------" 
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  puts row1, line, row2, line, row3
end

def valid_move?(board, position)
  position = position.to_i - 1
  if position_taken?(board, position) 
    return false
  elsif position < 0 || position > 8
    return false
  else
    return true
  end
end

def position_taken?(board,position)
  !(board[position] == " " || board[position] == "" || board[position] == nil)
end

def move(array, position, value = "X")
  array[position.to_i - 1] = value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board,position)
    move(board, position)
    display_board(board)
  else 
    puts "Invalid move. Please try again."
    turn(board)
  end
end

    
  