
def display_board(board)

  position_1 = board[0]
  position_2 = board[1]
  position_3 = board[2]
  position_4 = board[3]
  position_5 = board[4]
  position_6 = board[5]
  position_7 = board[6]
  position_8 = board[7]
  position_9 = board[8]

  puts " #{position_1} | #{position_2} | #{position_3} "
  puts "-----------"
  puts " #{position_4} | #{position_5} | #{position_6} "
  puts "-----------"
  puts " #{position_7} | #{position_8} | #{position_9} "

end

def input_to_index(input)
  index = input.to_i - 1
end


def position_taken?(board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def valid_move?(board, index)
  if position_taken?(board, index) == true || index.between?(0, 8) == false
      return false
    else
      return true
    end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  until valid_move?(board, index) == true
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index, token = "X")
  display_board(board)
end
