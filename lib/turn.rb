def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, position)
  if position.to_i > 9
    return false
  elsif position.to_i.to_s != position
    return false
  elsif position_taken?(board, position.to_i-1) == true
    return false
  else return true
  end
end


# re-define your #position taken method here, so that you can use it in the #valid_move method above.
def position_taken?(board, position)
  puts board[position] == 'X' || board[position] == 'O'
  if board[position] == 'X' || board[position] == 'O'
    return true
  end

  return false
end

def move(board, position, char="X")
  board[position.to_i-1] = char
  return board
end

def turn(board)
    puts "Please enter 1-9:"
    position = gets.strip
    if valid_move?(board, position) == true
      move(board, position)
      display_board(board)
    else
      turn(board)
    end

end



# board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]

# position = "5"
# puts position_taken?(board, position.to_i-1)
# puts valid_move?(board, position)