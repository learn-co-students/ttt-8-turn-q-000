def valid_move? (array , position)
  loc = position.to_i
  position = loc
  if position > 0 && position< 10
    if position_taken?(array , position)
      return false
    else
      return true
    end
  else
    return false
  end
end

#cheking
def position_taken?(array , position)
  if array[position - 1] == " " || array[position - 1] == "" || array[position - 1] == nil
    return false
  else
    return true
  end
end
#................ display
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#..............move
def move(array , position , value = "X")
  array[position - 1] = value
end
#........................ final turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board , input)
    move(board , input.to_i)
    display_board(board)
  else
    return turn(board)
  end
end
