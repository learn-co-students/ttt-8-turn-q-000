def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp

  if(valid_move?(board, num))
    num = num.to_i
    move(board, num)
  else
    turn(board)

  end
display_board(board)
end

# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i
 if(position.between?(1,9))
    position -=1
   if(position_taken?(board, position))
      false
   else
     true
   end
 end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!

def position_taken?(board, position)
  if(board[position] == "" || board[position] == " "  )
     false
  elsif(board[position] == nil)
      false

  else
    true
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
def move(arr, location, character = "X")
  location = location.to_i - 1
  arr[location] = character

end