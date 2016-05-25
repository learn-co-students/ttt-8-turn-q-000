def turn(board)
 
  puts "Welcome to Tic Tac Toe!"
  while true do
 
    puts "Please enter 1-9:"
    
    index = gets.strip

    i = input_to_index(index)

    if valid_move?(board, i)
      move(board, i, character = "X")
      display_board(board)
       break
    end

  end

end




# code your #valid_move? method here

def valid_move?(board, index)

  if position_taken?(board, index) == false && (index >= 0 && index <= 8)

    return true
   
  end

end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)



  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end


end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(num)

 num.to_i - 1


end

def move(board, index, character = "X")

  board[index] = character

end