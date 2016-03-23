def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  until valid_move?(board, input) == true
    puts "Please enter 1-9:"
    input = gets.chomp
  end
  move(board, input)
  display_board(board)
end


def valid_move?(board, position)
  if position_taken?(board, position.to_i) == false && [1, 2, 3, 4, 5, 6, 7, 8, 9].include?(position.to_i)
    true
  else
  end 
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, position)
  if board[position - 1] == "X" || board[position - 1] == "O"
    true
  else
    false
  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!

def move(board, input, player="X")
  board[input.to_i - 1] = player
  board
end


