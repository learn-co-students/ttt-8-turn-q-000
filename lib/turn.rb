def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i - 1
  position >= 0 && position <= board.length && !position_taken?(board, position)

end


def position_taken?(board, position)
  if board[position] == " " || board[position] == ""
    false
  elsif board[position] == nil
    false
  else
    true
end

end





def move(board, option, char="X")
  option = option.to_i
  board[option - 1] = char
  return board
end


def turn(board)
move(board, "5", "X")
move(board, "1", "O")
move(board, "2", "X")
  input = puts  "Please enter 1-9:"
  puts display_board(board)

  position = gets.to_i

  until position == "1"
 puts  "Please enter 1-9:"
end


end






