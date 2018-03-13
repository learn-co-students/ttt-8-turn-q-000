def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
  if position.to_i.between?(1,9)
    return !position_taken?(board,position.to_i-1)
  else
    return false
  end
end

def position_taken?(board,position)
  if board[position] == " "
    return false
  else
    return true
  end
end

def move(board, number, player = "X")
  board[number.to_i-1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board,input)
    move(board,input)
    display_board(board)
  else
    return turn(board)
  end
end