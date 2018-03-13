def turn(board)
 puts "Please enter 1-9:"
 position = gets.chomp
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end

def valid_move?(board, position)
  position.to_i.between?(1, 9) && !(position_taken?(board, position))
end

def position_taken?(board, position)
    position = position.to_i - 1
  unless board[position].nil?
    if (board[position].include? "X") || (board[position].include? "O")
      true
    else
      false
    end
  else false
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
def move(board, position, char = 'X')
  board[position.to_i - 1] = char
end
