require 'pry'

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, input)
  if input.to_i-1 < 0 || input.to_i-1 > 8
    false
  elsif position_taken?(board, input)
    false
  else input.to_i.between?(1, 9)
    true
  end
end


def position_taken?(board, input)

  if board[input.to_i-1] == "X" || board[input.to_i-1] == "O"
    true
  else
    false
  end

end

def move(board, location, player = "X")
  board[location.to_i-1] = player
end

def turn(board)

  puts "Please enter 1-9:"
  input = gets.strip
  valid = valid_move?(board, input)
  if valid == true
    move(board, input, player = "X")
    display_board(board)
  else
    valid == false
    turn(board)
  end


end

