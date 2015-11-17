def turn(board)
   puts "Please enter 1-9:"
   position = gets.strip
   if valid_move?(board,position)
      move(board,position,char = "X")
      display_board(board)
   elsif !valid_move?(board,position)
      puts "Please enter another number 1-9:"
      position = gets.strip
   end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, position, char = "X")
   position = position.to_i - 1
   board[position] = char
end

# code your #valid_move? method here
def valid_move?(board, position)
   if position.to_i.between?(1,9) && !position_taken?(board, position)
      return true
   else return false
   end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
   if board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
      return true
   else return false
   end
end
