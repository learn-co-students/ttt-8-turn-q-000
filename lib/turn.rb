
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken? (board, position)
  if board[position-1] == " " || board[position-1] == "" || board[position-1] == nil
    false
  elsif board[position-1] == "X" || board[position-1] == "O"
    true
  else
  end
end

def valid_move?(board,position)
  if position_taken?(board,position.to_i)
    false
  elsif !position_taken?(board,position.to_i) && position.to_i.between?(1,9)
    true
  else
    false
  end
end

def move(board,position,char = 'X')
  position = position.to_i
  board[position-1] = char
  display_board(board)
end

def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  position = gets.strip

  until(valid_move?(board,position))
    puts "Please enter 1-9:"
    position = gets.strip
  end

  position = position.to_i
  board[position-1] = "X"
  display_board(board)
end

