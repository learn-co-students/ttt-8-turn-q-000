def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, input, char = "X")
  input = input.to_i
  board[input-1] = char
end  

def turn(board)
  puts "Please enter 1-9"
  input = gets.strip
  input = input.to_i
  until input > 9
  move(board, input, char = "X")
  display_board(board)
  input += 1
end

end

def valid_move?(board, input)
  if input.to_i.between?(1, 9) && !position_taken?(board, input) 
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


