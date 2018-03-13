def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  if position.between?(1,9) && position_taken?(board, position) == false
    true
  else
    false
  end
end

def position_taken?(board, position)
  if board[position-1] == " " || board[position-1] == "" || board[position-1] == nil
    false
  else
    true
  end
end

def move(array, position, value="X")
  array[position.to_i-1] = value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position, value="X")
    display_board(board)
  else
    puts "Please try entering a number again:"
    turn(board)
  end
end