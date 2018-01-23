
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(anything)

  puts " #{anything[0]} " + "|" + " #{anything[1]} " + "|" + " #{anything[2]} "
  puts "-----------"
  puts " #{anything[3]} " + "|" + " #{anything[4]} " + "|" + " #{anything[5]} "
  puts "-----------"
  puts " #{anything[6]} " + "|" + " #{anything[7]} " + "|" + " #{anything[8]} "

end

def turn(board)

  puts "Please enter 1-9:"

  input = gets.strip

  index = input_to_index(input)


  if valid_move?(board, index) == true

    move(board, index)

    display_board(board)

  else

    while valid_move?(board, index) == false

      puts "Please enter 1-9:"

      input = gets.strip

      index = input_to_index(input)

    end

  end

end

def input_to_index(input)

input.to_i - 1

end


def valid_move?(board, index)


  if ((index >= 0) && (index <= 8)) != (position_taken?(board, index))

    return true

  else

    return false

  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)

  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)

    return false

  end

  if (board[index] == "X") || (board[index] == "O")

    return true

  end

end


def move(array, anything, value = "X")

  array[anything] = value

end
