def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, pos)
  !position_taken?(board, pos.to_i) && (1..9).include?(pos.to_i)
end

def position_taken?(board, pos)
  ![nil, "", " "].include?(board[pos-1])
end

def move(board, pos, char='X')
  board[pos.to_i-1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip

  if valid_move?(board, pos)
    move(board, pos)
    display_board(board)
  else
    turn(board)
  end
end