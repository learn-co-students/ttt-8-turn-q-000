def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  while !valid_move?(board, position)
    puts "Please enter 1-9:"
    position = gets.strip
  end

  move(board, position, value = 'X')
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(array, position, value = 'X')
  position = position.to_i - 1
  array[position] = value
  display_board(array)
end

def valid_move?(board, position)
  position = position.to_i - 1
  if position.between?(0,8)
    if !position_taken?(board, position)
      true
    end
  end
end

def position_taken?(board, position)
  if board[position] == "X"
    true
  elsif board[position] == "O"
    true
  else
    false
  end
end
