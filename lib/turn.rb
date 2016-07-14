def display_board(the_board)
   puts " #{the_board[0]} | #{the_board[1]} | #{the_board[2]} "
   puts "-----------"
   puts " #{the_board[3]} | #{the_board[4]} | #{the_board[5]} "
   puts "-----------"
   puts " #{the_board[6]} | #{the_board[7]} | #{the_board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
       true
   else
     false
   end
end

def position_taken?(board, index)
 !(board[index].nil? || board[index] == " " || board[index] =="")
 end

 def move(board, index, token = "X")
   board[index] = token
 end

def turn(board)
  puts "Please enter 1-9:"
input = gets.chomp.to_i
index = input_to_index(input)
if valid_move?(board, index)
 move(board, index)
 display_board(board)
else
turn(board)
end
end
