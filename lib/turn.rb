def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  while (!valid_move?(board, position))
    puts "ask for input again until you get a valid input"
    position = gets.strip
  end
  move(board, position)
  
end


def move(board, position, token = "X")
  position = position.to_i - 1
    board[position] = token
    display_board(board)
end

def display_board(board)
  hr = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts hr
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts hr
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i - 1
  if (position.between?(0, 8) && !position_taken?(board, position))
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board, position)

  if (board[position] == " " || board[position] == "" || board[position] == nil)
    false
  elsif (board[position] == "X" || board[position] == "O")
    true
  end
end

