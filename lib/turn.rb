def valid_move?(board, position)
  position = position.to_i
  if position.to_i > 9 || position.to_i < 1
    return false
  else 
    return !position_taken?(board, position) 
  end
end

def position_taken?(board, position)
  if board[position.to_i - 1] == " " || board[position.to_i - 1] == "" || board[position.to_i - 1] == nil
    return false
  else
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, input, player_input="X")
  board[input-1] = player_input
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    input=input.to_i
    display_board(move(board,input,"X"))
  else
    turn(board)
  end
end
