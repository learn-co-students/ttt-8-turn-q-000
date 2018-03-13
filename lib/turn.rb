def display_board(board)
  puts " #{board[0]} " + "|" +  " #{board[1]} " + "|" +  " #{board[2]} "

  puts "-----------"

  puts " #{board[3]} " + "|" +  " #{board[4]} " + "|" +  " #{board[5]} "

  puts "-----------"

  puts " #{board[6]} " + "|" +  " #{board[7]} " + "|" +  " #{board[8]} "
end

def valid_move?(board,position)
    position = position.to_i-1
  if  position.between?(0,8) && position_taken?(board, position)==false
    true
  else
    false
  end

end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == "" || board[position] == " "|| board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end

end

def move(board, input, player="X")
  input=input.to_i
  input=input-1
  board[input]=player
end



def turn(board)
  puts "Please enter 1-9:"
  position=gets.chomp
  
  while !valid_move?(board, position) do
    puts "Please enter 1-9:" 
    position=gets.chomp
  end
    move(board, position) 
    display_board(board)

end
























