def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, location, player = "X")
  puts board[location.to_i-1] = player
end 

# # code your #valid_move? method here
# def valid_move?(board, position)
#   position = position.to_i - 1
#   if position_taken?(board, position) == false && position.between?(0, 10)
#     return true
#   elsif board[position] == "X" || board[position] == "O"
#     return false
#   end
# end




# # re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# def position_taken?(board, position)
#   if board[position] == "X" || board[position] == "O"
#     true
#   elsif board[position] == "" || board[position] == " " || board[position] == nil
#     false
#   end

# end

def valid_move?(board,position)
  space = position.to_i
  if space.between?(1,9)
    space = space - 1
    position_taken?(board, space) == false
  end 
end 

def position_taken?(board, position)
  if board[position] == " "
    return false
  elsif board[position] == ""
    return false
  elsif board[position] == nil
    return false
  else 
    return true
  end 
end 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if !valid_move?(board, input)
    turn(board)
  end  
  move(board,input)
  display_board(board)
end 

