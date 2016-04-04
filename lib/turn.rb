def display_board(board)
  line = "-"
  pipe = "|"
  puts " #{board[0]} #{pipe} #{board[1]} #{pipe} #{board[2]} "
  puts "#{line * 11}"
  puts " #{board[3]} #{pipe} #{board[4]} #{pipe} #{board[5]} "
  puts "#{line * 11}"
  puts " #{board[6]} #{pipe} #{board[7]} #{pipe} #{board[8]} "
end

def turn(board)
  puts "Enter 0 or number higher than 9 to quit!"
  puts "Please enter 1-9:"
#  input = gets.to_i
#  postition = input - 1
  position = gets

#  while position < 10
 #   if position == 0
#      break
#    end
    if valid_move?(board, position) == true
  #  while input == valid_move?
       move(board, position, value = "X")
    else
      puts "Please enter a number between 1 and 9 "
      turn(board)
    end
    display_board(board)
#  end
 end

    def valid_move?(board, position)
    true_position = position.to_i - 1
      if true_position.between?(0,8) && position_taken?(board, true_position) == false
      #puts "this is a valid move"
        true
      else
      puts "this position is taken"
        false
      end
    end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position]  == " "
    false
  elsif board[position] == nil || board[position] == ""
     false
  else
    true
  end
end

 def move(board, position, value)
   true_position = position.to_i - 1
   board[true_position] = value
 end