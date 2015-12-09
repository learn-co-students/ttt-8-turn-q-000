def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 



def valid_move?(board, position)
  position = position.to_i
  index = position - 1
  if position.between?(1,9)
    if position_taken?(board, index)
      return false
    else
      return true
    end
  end
end



def position_taken?(board, position)
  if board[position] == "" || board[position] == " " || board[position] == nil
    return false
  else
    return true
  end
end

def move(board, location, character = "X")
  board[location.to_i-1] = character
end



def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
  else
    turn(board)
  end
  display_board(board)
end



