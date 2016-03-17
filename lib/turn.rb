def turn(board)
  puts "Please enter 1-9:"
  choice = gets.chomp
  if valid_move?(board, choice)
    move(board, choice)
    display_board(board)
  else
    puts "Invalid choice."
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

def position_taken?(board, position)
  board[position.to_i-1] == "X" || board[position.to_i-1] == "O" ? true : false
end

def valid_move?(board, position)
  position_taken?(board, position) || !position.to_i.between?(1, 9) ? false : true
end

def move(board, pos, char = "X")
  board[pos.to_i-1] = char
end