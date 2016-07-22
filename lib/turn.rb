def display_board(board)
  puts " " + "#{board[0]}" + " | " + "#{board[1]}" + " | " + "#{board[2]}" + " "
  puts "-----------"
  puts " " + "#{board[3]}" + " | " + "#{board[4]}" + " | " + "#{board[5]}" + " "
  puts "-----------"
  puts " " + "#{board[6]}" + " | " + "#{board[7]}" + " | " + "#{board[8]}" + " "
end

def input_to_index(user_input)
  index = user_input.to_i
  if(index.class == Fixnum)
    index = index - 1
  else
    index = -1
  end

end

def valid_move?(board, index)
  if(index.between?(0,8))
    if(position_taken?(board, index) == false)
      return true
    else
      return false
    end
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if(board[index] == "" || board[index] == " " || board[index] == nil)
    return false
  else
    return true
  end
end

def move(board, index, token = "X")
  if(valid_move?(board, index) == true)
      board[index] = token
      display_board(board)
  else
    turn(board)
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input.to_i
  if(input.between?(1,9))
    index = input_to_index(input)
    move(board, index)
  else
    turn(board)
  end
end
