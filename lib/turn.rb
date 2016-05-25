def display_board(board)

puts " " + board[0] + " | " + board[1] + " | " + board[2] + " "
puts "-----------"
puts " " + board[3] + " | " + board[4] + " | " + board[5] + " "
puts "-----------"
puts " " + board[6] + " | " + board[7] + " | " + board[8] + " "

end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif !(index.between?(0,8))
    false
  elsif board[index] == "X" || board[index] == "O"
    false
  else
    true
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] = " "
    false
  elsif board[index] == "" || board[index] = nil
    false
  else
    true
  end


def input_to_index(input)
  input = (input.to_int)
  index = input - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
   if valid_move?(board, index)
     move(board, index, player = "X")
     display_board(board)
   else
     turn(board)
   end
 end
end 
