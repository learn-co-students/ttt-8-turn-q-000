# Helper Methods :
def input_to_index(user_input)
  index = user_input.strip.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) || !(0..8).include?(index)
    false
  else true
  end
end

def position_taken?(board, index)
if board[index] == " " || board[index] == "" or board[index] == nil
  return false
else true
end

end

def move(board, index, value)

      board[index] = value
      if value == "X"
        value = "O"
      else value = "X"
      end

    end


################## METHOD ######################
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
    if valid_move?(board, index)
      move(board, index, value = "X")
    else turn(board)
    end
  display_board(board)
end


def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} \n"

end
