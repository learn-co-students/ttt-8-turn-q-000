board = [" ", "X", "X", "X", "O", "O", "X", "O", "O"]

def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

display_board(board)

# code your #valid_move? method here
def valid_move?(board,position)
  if position.to_i >= 1 && position.to_i <= 9

    if position_taken?(board,position) == true
      return false
    elsif position_taken?(board,position) == false
      return true
    end
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board,position)
  if board[position.to_i-1] == " "
    return false
   elsif board[position.to_i-1] == ""
    return false
   elsif board[position.to_i-1] == nil
    return false
  elsif board[position.to_i-1] == "X" || board[position] == "O"
    return true
  end
end

def move(board,position,char="X")

  board[position.to_i-1]=char
  return board
end

def turn(board)

  puts "Please enter 1-9:"
  input=gets.strip
  if valid_move?(board,input) == false
    puts "Please input a valid position"
    input=gets.strip
  end

  move(board,input)
  
  display_board(board)

end





