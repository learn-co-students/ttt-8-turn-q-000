def display_board (board = [' ',' ',' ',' ',' ',' ',' ',' ',' '])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move (board, position, marker = "X")
  position = position.to_i
  board[position-1]=marker
end

def position_taken?(board,position)
  if board[position] != "X" && board[position] != "O"
    return false
  else
    return true
  end
end

def valid_move?(board, position)
  position = position.to_i
  if position_taken?(board, position-1) == true || position < 1 || position > 9
    return false
  else
    return true
  end
end

def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input) == true
    move(board, input)
    display_board(board)
  else
    while valid_move?(board, input) == false
    puts "Invalid. Please enter 1-9:"
    input = gets.strip
    end
  end
end
