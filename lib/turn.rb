def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true
    move(board, position, character = "X")
  else valid_move?(board, position) == false
    turn(board)
  end
  display_board(board)
end


def valid_move?(board, position)
  if position.to_i.between?(1, 9) && position_taken?(board, position)
    true
  else
    false
   end
end


def position_taken?(board, position)
  if "#{board[position.to_i - 1]}" == "X"
    false
  else "#{board[position.to_i - 1]}" == " " || ""
  true
  end
end


def move(board, position, character = "X")
  board[position.to_i - 1] = character

end