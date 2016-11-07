def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  cell = position.to_i - 1
  return true if cell.between?(0, 8) && board[cell] === " "
  false
end

def move(board, position, token = "X")
  new_move = position - 1
  board[new_move] = token
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  new_move = gets.chomp
  if valid_move?(board, new_move)
    position = new_move.to_i
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end