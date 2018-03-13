def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position) == true
    move(board, position)
    display_board(board)

  else
    puts "It looks like that isn't a valid move."
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, character = "X")
    position = position.to_i
    board[position - 1] = character
    return board
end

def valid_move?(board, position)
  position = position.to_i
  if position_taken?(board, position) == true
    return false
  elsif position.between?(1, 9) == true
     return true
  else
    return false
  end
end

def position_taken?(board, position)
  position = position.to_i - 1
  if
    board[position] == " " ||
    board[position] == "" ||
    board[position] == nil
    return false
   else
    return true
  end
end
