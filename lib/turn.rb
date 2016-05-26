def turn(board)
  puts "Please enter 1-9:"
  move = input_to_index(gets)
  while !valid_move?(board, move)
    puts "Please enter an unoccupied position 1-9:"
    move = input_to_index(gets)
  end
  move(board, move) 
  display_board(board)
end

def display_board(board)
  # assumes board is an array of 9 single characters in [OX ]
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, pos)
  if pos.between?(0,8) and !position_taken?(board, pos) then
    true
  else
    false
  end
end

def position_taken?(board, pos)
  if board[pos] == " " || board[pos] == "" || board[pos] == nil then
    false
  else
    true
  end
end

def input_to_index(input)
  Integer(input)-1
rescue ArgumentError
  -1
end

def move(board, where, what="X")
  if what != "X" and what != "O"
    raise ArgumentError, "#move wants `X` or `O` got `#{what}`"
  end
  if where < 0 or where > 8
    raise ArgumentError, "#move wants position in [0,8] got `#{where}`"
  end
  board[where] = what
end
