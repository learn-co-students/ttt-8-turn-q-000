def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  until valid_move?(board, position)
    puts "Please enter a valid value"
    position = gets.strip
  end
  move(board, position)
  display_board(board)
end


def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position_taken?(board, position)
    false
  else
    if position.to_i >= 1 && position.to_i <= 9
      true
    else
      false
    end
  end 
end 

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == "" || board[position] == " " || board[position] == nil
    false
  else
    true
  end
end

#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
# code your move method here!
def move(board,position,token = "X")
  pos = position.to_i
  board[pos-1] = token
end