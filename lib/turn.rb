board =[" "," "," "," "," "," "," "," "," "]
def display_board(board)
  output_line1 = " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  output_line2 = "-----------"
  output_line3 = " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  output_line4 = "-----------"
  output_line5 = " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
puts (output_line1 + "\n" + output_line2 + "\n" + output_line3 +"\n"+ output_line4 + "\n" + output_line5 )
end

def valid_move?(board, position)
  true_pos = board[(position.to_i)-1]

  if true_pos != "X" && true_pos != "O" && position.to_i.between?(1, 9)
    return true

  else
    return false
  end
end

def move(board, position, value = "X")

  def update_array(array, position, value)
    array[position.to_i - 1] = value
  end
  update_array(board, position, value)
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets

  if valid_move?(board, input) == true
    move(board, input)
  else
    turn(board)
  end
end






