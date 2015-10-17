
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i - 1
  if !position.between?(0,8)
    false
  elsif position_taken?(board, position)
    false
  else
    true
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else board[position] == "X" || board[position] == "O"
    true
  end
end


def move(board, position, character = "X")
  board[position.to_i - 1] = character
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
  else turn(board)
  end
  display_board(board)

end


