#turn

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  index = position.to_i - 1
  input_to_index(position)

    if valid_move?(board, index) == true
      move(board, index, char = "X")
      display_board(board)
    else
      turn(board)
    end
end

#display_board

def display_board(board)
  puts line_one = " #{board[0]} " "|" " #{board[1]} "  "|" " #{board[2]} "
  puts line_two = "-----------"
  puts line_three = " #{board[3]} " "|" " #{board[4]} "  "|" " #{board[5]} "
  puts line_two
  puts line_four = " #{board[6]} " "|" " #{board[7]} "  "|" " #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
  #index = position.to_i - 1
  if (position_taken?(board, index)== false) && (index.between?(0,8))
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

#move
def move(board, index, char = "X")
  board[index] = char
end

#input to index
def input_to_index(position)
    index = position.to_i - 1
end
