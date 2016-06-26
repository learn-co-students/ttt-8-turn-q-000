def display_board(board)
  puts row1=[" #{board[0]} | #{board[1]} | #{board[2]} "]
  puts div= ["-----------"]
  puts row2=[" #{board[3]} | #{board[4]} | #{board[5]} "]
  puts div= ["-----------"]
  puts row3=[" #{board[6]} | #{board[7]} | #{board[8]} "]

end



def valid_move?(board, index)
  position_taken?(board, index) == false && index.between?(0,8)
end

def position_taken?(board,index)
  !(board[index] == "" || board[index] == " " || board[index] == "nil")
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(array, index, value="X")
  array[index] = value
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, "X")
      display_board(board)
    else
      turn(board)
    end
end
