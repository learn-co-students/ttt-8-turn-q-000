def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if move(board, position, "X")
    display_board(board)
  else
    turn(board)
  end
end

def move(board, position, char="X")
  if valid_move?(board, position)
    board[position.to_i - 1] = char
  else
    false
  end
  
end

def valid_move?(board, position)
  if position == "invalid"
    return false
  end
  if board[position.to_i-1] == "" || board[position.to_i-1] == " " 
    true
  else
    false
  end
end

