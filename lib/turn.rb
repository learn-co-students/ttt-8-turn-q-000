def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
    user_input = user_input.to_i
     user_input -= 1
end 

def move(array, index, value = "X")
    array[index] = value
end    

def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
       true
    else
        false
    end   
end    

def valid_move?(board, index)
     position_taken?(board, index) == true && index.between?(0, 8)
        
end    

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  user_input = input_to_index(input)

  if valid_move?(board, user_input)
    move(board, user_input)
    display_board(board)

  else
     turn(board)   
  end     
end









