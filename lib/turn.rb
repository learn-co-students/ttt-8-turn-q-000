
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  index.between?(0,8) && board[index] == " " 
  # until index.between?(0,8)
  #   puts "Please enter 1-9"
  #   number = gets.strip
  # end
  # move(board, index, "X")
  # display_board(board)
end



def position_taken?(board, index)
  board[index] == " " || board[index] == " " || board[index] == nil
end

def input_to_index(input)
  index = input.to_i
  index - 1
end

def move(board, index, char = "X")
    board[index] = char
end

def turn(board)
  begin
    puts "Please enter 1-9:"
    number = gets.strip
    number = input_to_index(number) 
  end until valid_move?(board, number)
    move(board, number)
    display_board(board)
end


