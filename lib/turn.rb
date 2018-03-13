def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  puts " # I entered #{input} in response to the get prompt"
  if valid_move?(board,input) == true
    move(board,input)
    display_board(board)
  else
    turn(board)
  end
end
# code your move method here!
def move(array, position, value="X")
  array[position.to_i - 1] = value
end

# code your #valid_move? method here
def valid_move?(board,position)
  x = position.to_i
  if x.between?(1,9)
    if position_taken?(board,x-1) == false
      true
    elsif position_taken?(board,x-1) == true
      false
    end
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken? (board, position)
  if board[position] == " " || board[position] == ""
    false
  elsif board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end