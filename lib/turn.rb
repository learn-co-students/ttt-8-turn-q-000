board = [""," "," "," "," "," "," "," "," "]
index = 0

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board,index)
    if !position_taken?(board,index) && index.between?(0, 8); true

else position_taken?(board,index) && index.between?(0, 8) ; false

end
end

def position_taken?(board,index)
  if  board[index] == "" || board[index] == " " || board[index] == nil; false
  else; true
  end
end

def move(board,user_input, x = "X")
  board[user_input] = x
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  user_input = user_input.to_i
user_input = input_to_index(user_input)
  if valid_move?(board,user_input); true
    move(board,user_input, x = "X")
    display_board(board)
  else valid_move?(board,user_input);false
    'Please enter 1-9:'
       user_input = gets.chomp

   end
 end
