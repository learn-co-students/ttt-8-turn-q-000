def turn(board)
  puts "Please enter 1-9:"
  choice = gets.strip
  while !valid_move?(board,choice) do
    choice = gets.strip
  end
  move(board, choice)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, char = "X")
  board[position.to_i-1] = char
end
def valid_move?(board, pos)
  if (pos.to_i >= 1 && pos.to_i <= 9)
    if (position_taken?(board,pos))
      return false
    else
      return true
    end
  else
    return false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, pos)
  if(board[pos.to_i-1] == "X" || board[pos.to_i-1] == "O")
    return true
  else
    return false
  end
end