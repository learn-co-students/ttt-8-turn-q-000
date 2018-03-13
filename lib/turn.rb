 def display_board(board)
  line = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "#{line}"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "#{line}"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

 def valid_move?(board,position)
  input = position.to_i - 1
  
if position_taken?(board,position)
  return false
  elsif input.between?(0,8) 
  return true  
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  index = index.to_i - 1
    if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
  end
    
end

def move(boardarray,position,char = "X")
  position = position.to_i - 1
  boardarray[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp.to_i
  position = input - 1
  if valid_move?(board,"#{input}") 
   board[position] = "X"
   display_board(board)
  else
   puts "That move is invalid. Try again!"
   turn(board)
  end
end
 #board = [" "," "," "," "," "," "," "," "," "]

