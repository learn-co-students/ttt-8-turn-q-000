board = Array.new(9," ")
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  elsif board[position] == "X" || board[position] =="O"
    return true
  end
end

def valid_move?(board, position)

position = position.to_i - 1

  if position_taken?(board, position)
    return false
  elsif position.between?(0,8)
      true
    elsif position < 0 || position > 8
      false
  end
end

def move(board,position, xoro = "X")
  position = position.to_i - 1
  board[position] = xoro
end

def turn(board)

  puts "Please enter 1-9:"
  position= gets.strip

  if !(valid_move?(board,position))
    turn(board)
  end
move(board,position,xoro = "X")
  display_board(board)

end
