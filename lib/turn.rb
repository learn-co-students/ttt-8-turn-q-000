

def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, position)
  position = position.to_i - 1
    if position_taken?(board, position) == false  &&  position.between?(0, 10)
    return true
      elsif board[position] == "X" || board[position] == "O"
       return false

  end
end

#Method checks to see if space is available
def position_taken? (board, position)
  position = position.to_i
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
end
end

# method to execute the players move
def move(board, position, value = "X")

  board[position.to_i - 1] = value

  return board
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position) == true
    move(board, position)

  else turn(board)
  end
  display_board(board)
end
