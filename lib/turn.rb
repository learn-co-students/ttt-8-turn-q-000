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

def valid_move?(board, position)
  pos = position.to_i
  if pos.between?(1,9) && !position_taken?(board, pos-1)
    true
  else
    false
  end
end


def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position].nil?
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


def move(board, loc, char="X")
  board[loc.to_i-1] = char
  return board
end