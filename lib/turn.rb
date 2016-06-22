def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
index = user_input.to_i
index = index - 1
#if index.type != INTEGER then index=-1
end

def move(board,userinput,character="X")
  board[userinput] = character
end



# code your #valid_move? method here
def valid_move?(board,index)
  index >=0 && index <=8 && !(position_taken?(board,index))
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board,index)
  (!(board[index] == " " || board[index] == "" || !nil) || (board[index] == "X" || board[index] == "O"))
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  if valid_move?(board,index)
    move(board,index,character="X")
    display_board(board)
  else turn(board)
  
  #turn(board)
  end
end
