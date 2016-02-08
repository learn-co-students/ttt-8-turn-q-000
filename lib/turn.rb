def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board=[" "," "," "," "," "," "," "," "," "]

def move(board, input, character="X")
  input=input.to_i - 1
  board[input]=character
end

def position_taken?(board, position)
  if board[position]== " "||board[position]== ""||board[position]== nil
    false
  else
    true
  end

end

def valid_move? (board,position)
  position=position.to_i-1
  if position.between?(0,8)&&!(position_taken?(board,position))
    true
  else
    false
  end

end

def turn(board)
  puts "Please enter 1-9:"
  position=gets
  if valid_move?(board,position)
    true
  else
    turn(board)
  end
  move(board,position, character="X")
  display_board(board)
end

