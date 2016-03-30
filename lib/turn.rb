def display_board(board)
  puts [" #{board[0]} | #{board[1]} | #{board[2]} "]
  puts "-----------"
  puts [" #{board[3]} | #{board[4]} | #{board[5]} "]
  puts "-----------"
  puts [" #{board[6]} | #{board[7]} | #{board[8]} "]
end


def valid_move?(board,position)
  if position.to_i.between?(1,9) && position_taken?(board, position) == false
    true 
  else
    false
  end
end


def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "Y"
    true
  end
end


def move(board, position, turn)
  board[position.to_i - 1] = turn
end


def turn(board)
  puts "Please enter 1-9:"
  turn = gets.strip
  if !valid_move?(board,turn)
    turn = gets.strip
  else
    puts "Please enter 1-9:"
  end
  move(board, turn, "X")
  display_board(board)
end

