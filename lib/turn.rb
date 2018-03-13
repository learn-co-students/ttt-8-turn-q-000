def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position = position.to_i - 1
    if position == -1
      return false
    else
     if !position_taken?(board, position) 
       return true
     else
       return false
     end
    end
end
def position_taken?(board, position)
    if board[position] == " "
      return false
    else
     return true
    end
end

def move(board, position, player = "X")
  board[position.to_i - 1] = player
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if (valid_move?(board, position))
     move(board, position)
  else
    turn(board)
  end
end