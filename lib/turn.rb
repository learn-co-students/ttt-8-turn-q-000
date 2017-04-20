def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, int)
  ints = int.to_i
  ints = ints - 1
  if ints > 8 || ints < 0
    false
  elsif(board[ints] == " " || board[ints] == "")
    true
  else
    false
  end
end

def move(board, position, string="X")
  position = position.to_i - 1
  board[position] = string
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  if valid_move?(board, input) == false
    turn(board)
  else
    move(board, input)
  end
  display_board(board)
end
