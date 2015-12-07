def display_board(board)
  sep = "-----------"
  line1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  line2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  line3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  puts line1
  puts sep
  puts line2
  puts sep
  puts line3
end

def valid_move?(board, position)
  position = position.to_i
  index = position - 1
  if position.between?(1,9)
    if position_taken?(board, index)
      return false
    else
      return true
    end
  end
end

def position_taken?(board, position)
  if board[position] == "" || board[position] == ' ' || board[position] == nil
    return false
  else
    return true
  end
end

def move(board, position, mark='X')
  position = position.to_i
  board[position-1] = mark
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
  else
    turn(board)
  end
  display_board(board)
end




