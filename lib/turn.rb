
def display_board(board)
  line="-----------"
  puts cell(board[0], board[1], board[2])
  puts line
  puts cell(board[3], board[4], board[5])
  puts line
  puts cell(board[6], board[7], board[8])
end

def cell(pos_1, pos_2, pos_3)
  " #{pos_1} | #{pos_2} | #{pos_3} "
end


def valid_move? (board, index)
    if position_taken? board, index
        false
    else
        index.between?(0, 8)
    end
end

def position_taken? (board, index)
board[index] != " " && board[index] != "" && board[index] != nil
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, value= "X")
  board[index]=value
end



def turn (board)
  puts "Please enter 1-9:"
    input=gets.strip
    index = input_to_index(input)
      if valid_move?(board, index)
          move(board, index)
          display_board(board)
      else
         turn(board)
      end
end
