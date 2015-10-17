# code your #valid_move? method here
def valid_move?( board , position)
  realpos = position.to_i
  realpos = realpos - 1
  if realpos.between?(0,8) && (!position_taken?(board , realpos))
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board , position)
  if (board[position] == " " || board[position] == "" || board[position] == nil)
    return false
  elsif (board[position] == "X" || board[position] == "O")
    return true
  end
end

# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



# code your move method here!
def move(board , position , char = "X")
  pos = position.to_i
  pos -= 1
  board[pos] = char
  display_board(board)
end


#turn method definition
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board,input)
    move(board , input , "X")
    display_board(board)
  else
    turn(board)
  end
end
