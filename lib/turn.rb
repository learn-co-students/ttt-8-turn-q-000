def turn(board)
loop do

  puts "Where would you like to go?"
  puts "Please enter 1-9:"
  goto = gets.strip

  if valid_move?(board, goto)
    move(board, goto, "X")
    display_board(board)
    break
  else
     puts "Invalid move - try again"
end
end
end


def valid_move?(board, position)
  if !position_taken?(board, position) && (position.to_i).between?(1,9)
    return true
  else
    return false
  end
end

def move(array, position, value = "X")
  array[position.to_i - 1] = value
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if (board[position.to_i - 1] == "X"  || board[position.to_i - 1] == "O")
    return true
  elsif !(board[position.to_i - 1] == " "  || board[position.to_i - 1] == nil )
    return true
  else
    return false
  end
end

def display_board(xos)
  puts " #{xos[0]} | #{xos[1]} | #{xos[2]} "
  puts "-----------"
  puts " #{xos[3]} | #{xos[4]} | #{xos[5]} "
  puts "-----------"
  puts " #{xos[6]} | #{xos[7]} | #{xos[8]} "
end