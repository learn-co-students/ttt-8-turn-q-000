def valid_move?(board, position)
  position = (position.to_i-1)
  if position.between?(0, 8) && position_taken?(board, position) == false
      true
    else
      false
  end
end

def position_taken?(board, position)
      if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  end
    true
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, character="X")
    board[position.to_i-1]=character
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position) == true
    move(board, position, character="X")
  else
    turn(board)
  end
  display_board(board)
end
