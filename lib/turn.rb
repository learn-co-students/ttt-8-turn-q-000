def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  !position_taken?(board, position.to_i) && (1..9).include?(position.to_i)
end

def position_taken?(board, position)
  ![nil, "", " "].include?(board[position-1])
end

def move(board, position, character='X')
  board[position.to_i-1] = character
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end