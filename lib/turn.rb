def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  if position_taken?(board, position-1)
    return false
  else
    if position.between?(1,board.length)
      return true
    else
      return false
    end
  end
end

def position_taken?(board, position)
  if board[position] == "" || board[position] == " " || board[position] == nil
    return false
  elsif board[position] == "X" || board[position] == "O" 
    return true
  end
end

def move(board, position, token='X')
  position = position.to_i
  board[position-1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end

