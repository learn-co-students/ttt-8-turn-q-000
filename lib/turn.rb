def display_board(board)
  line = "-----------"
  puts( " #{board[0]} | #{board[1]} | #{board[2]} ")
  puts(line)
  puts( " #{board[3]} | #{board[4]} | #{board[5]} ")
  puts(line)
  puts( " #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(number)
  number = number.to_i
  if number.is_a? Integer
    return number - 1
  else
    return -1
  end
end


def valid_move? board, index
  return index < 9 && index >= 0 && board[index] == " "
end


def position_taken? board, index
  if valid_move? board, index
    board[index] != " " && board[index] != "" &&  board[index] != nil
  end
end

def move(board, position, symbol ="X")
  board[position] = symbol
end


def turn(board)
  puts("Please enter 1-9:")
  position = input_to_index(gets.chomp)
   until valid_move? board,position do
     puts("Please enter 1-9:")
     position = input_to_index(gets.chomp)
  end
  move(board, position, "X")
  display_board(board)
end
