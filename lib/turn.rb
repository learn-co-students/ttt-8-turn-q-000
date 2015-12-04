def move(board,position,turn = "X")
  board[position.to_i-1] = turn
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  if valid_move?(board, input)
    move(board,input)
  else
    puts "That is an invalid move! Try again."
    turn(board)
  end
end

def display_board(board)
  row1 = [" #{board[0]} | #{board[1]} | #{board[2]} "]
  row2 = ["-----------"]
  row3 = [" #{board[3]} | #{board[4]} | #{board[5]} "]
  row4 = ["-----------"]
  row5 = [" #{board[6]} | #{board[7]} | #{board[8]} "]
  puts row1
  puts row2
  puts row3
  puts row4
  puts row5
end

def valid_move?(board, position)
  position_taken?(board,position)
end

def position_taken?(board, position)
  if board[position.to_i-1] == "X" || board[position.to_i-1] == "O"
    false
  elsif (position.to_i-1).between?(0,9) && board[position.to_i-1] == " "
    true
    end
end