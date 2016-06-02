def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
   puts "Please enter 1-9:"
   users_input = gets.strip
   index = input_to_index(users_input) 
  if valid_move?(board, index) == true 
    return move(board, index, token = "X")
    display_board(board, index, token = "X")
  else 
    return turn(board)
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8) 
    return true
  else
    return false 
  end 
end

def input_to_index(users_input)
    index = users_input.to_i - 1
end
  
def move(board, index, token = "X")
    board[index] = token
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else board[index] == "X" || board[index] == "O"
    return true
    end
end



