board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end





def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)

  if valid_move?(board,input)
       move(board, input)
       display_board(board)
  else
      puts "Please enter 1-9:"
      input = gets.strip
  end
end



def input_to_index(input)
  user_input = input.to_i
  index = user_input - 1
end


def valid_move?(board,input)
  user_input = input.to_i
  index = user_input - 1
  move = ""

  if (index >= 0 && index <= 8) #&& board[index] == " " || board[index] == ""
    move = true
  elsif (index < 0 || index > 8) #&& board[index] == "X" || board[index] == "O"
    move = false
  else move = false
  end
end

def move (board, input,value = "X")
  user_input = input.to_i
  index = user_input - 1
  board[index] = value
end
