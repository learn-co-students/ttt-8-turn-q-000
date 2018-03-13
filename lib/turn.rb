def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    puts "Please enter 1-9:"
    position = gets.strip
  end
end
def valid_move?(board, position)
  position = position.to_i - 1
  (position < 10 && position >= 0) && !(position_taken?(board, position))

end
def position_taken?(board, position)
  board[position]== "X" || board[position] == "O"
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, num, mark="X")
  board[num.to_i - 1] = mark
end