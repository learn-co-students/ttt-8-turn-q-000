def display_board(board = [" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  if !(position_taken?(board,position)) && position.between?(1,9)
    return true
  else
    return false
  end
end


def position_taken?(board, position)
  my_play = board[position.to_i - 1]
  if my_play == " " || my_play == "" || my_play == nil
    return false
  else
    return true
  end
end


def move(board, position, character="X")
  if !position_taken?(board,position)
    board[position.to_i - 1] = character
    display_board(board)
  else
    puts "Invalid move."
  end
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position) == true
    move(board, position, character="X")
  else
    turn(board)
  end
end


