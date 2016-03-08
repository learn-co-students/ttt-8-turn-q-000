def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip.to_i

  if valid_move?(board, position.to_s)
    move(board, position)
    display_board(board)
  else
    puts "Invalid move, please enter another 1-9"
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

def valid_move?(board, position)
  position = position.to_i
  if position.between?(1,9)
    if position_taken?(board,position)
      return false
    else
      return true
    end
  else
      return false
  end
end

def position_taken?(board, position)
  if board[position-1] == "X" || board[position-1] == "O"
    return true
  else
    return false
  end
end

def move(board, position, token = "X")
  board[position-1] = token
  return board
end