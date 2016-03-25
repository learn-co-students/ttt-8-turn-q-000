#displays the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, position)
  if position.to_i.class == Fixnum && position != "invalid" && position.to_i.between?(0, 10)
    if position_taken?(board, position.to_i)
      false
    else
      true
    end
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position.to_i-1] == " " || board[position.to_i-1] == "" || board[position.to_i-1] == nil
    false
  else
    true
  end
end


def move(board, position, token = "X")
  board[position.to_i-1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp

  while !valid_move?(board, position)
    puts "Please enter 1-9:"
    position = gets.chomp
  end

  move(board, position, "X")

  display_board(board)
end
