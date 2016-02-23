
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move (board, position, value="X")
 position=position.to_i
 position -= 1
   board[position]=value
end

def valid_move? (board, position)
 position=position.to_i
 position -= 1
  if position >= 0 && position <= 9
    position_taken?(board, position)
    else
      false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, position)
  if board[position]==" " || board[position]=="" || board[position]==nil
    true
  elsif board[position]=="X" || board[position]=="O"
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position=gets.strip
  #valid_move?(board, position)
  if valid_move?(board, position)==true
    move(board, position)
    display_board(board)
    else
      puts "I'm sorry, that's not a valid move. Can you try again?"
      turn(board)
   end
end