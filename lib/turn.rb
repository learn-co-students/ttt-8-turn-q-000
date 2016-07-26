def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  input = input.to_i
  input = input-1
end



def valid_move?(board, index)
  if index.between?(1, 9) && !position_taken?(board, input) 
        return true
    else
        return false 
    end
  
 end   


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, input)
  if board[input.to_i-1] ==  "" || board[input.to_i-1] == " " || board[input.to_i-1] == nil 
    return false
  else
    return true
  end

end


def move(board, index, char = "X")
  index = index.to_i
  board[index] = char
end  

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  valid_move?(board, index)
  move(board, index, char = "X")
  display_board(board)


end


