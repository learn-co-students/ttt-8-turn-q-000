def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if (board[position] == "" || board[position] == " " || board[position] == nil)
    return false
  else
    return true
  end
end

def valid_move?(board, position)
  position = position.to_i - 1
  if (position < 0 || position > 8)
    return false
  else
    if (position_taken?(board, position) == false)
      return true
    else
      return false
    end
  end
end

def move(board, position, value = "X")
  position = position.to_i
  board[position - 1] = value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end
