
def display_board(board)

  line_1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  line_2 = "-----------"
  line_3 = " #{board[3]} | #{board[4]} | #{board[5]} "
  line_4 = "-----------"
  line_5 = " #{board[6]} | #{board[7]} | #{board[8]} "

  puts line_1
  puts line_2
  puts line_3
  puts line_4
  puts line_5
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
    if index.between?(0,8) && position_taken?(board, index) == false
     true
   else
     false
   end
 end

def position_taken?(board, index)
  if board[index] == "X"
    true
  elsif
    board[index] == "O"
    true
  else board[index] == " " || "" || nil
    false
 end
end


def move(board, index, value = "X")
  board[index] = value
  end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, value = "X")
    display_board(board)
  else
    turn(board)
end
end
