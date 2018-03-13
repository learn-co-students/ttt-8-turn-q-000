def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1,9)
    if !position_taken?(board, position.to_i-1)
      true
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

def position_taken?(board, position)
  if (board[position] ==  " " || board[position] == "" || board[position] == nil)
     taken = false
  else
     taken = true
 end
end

def move(board, position, char = "X")
  board[position.to_i-1] = char
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
