#Display Tic Tac Toe Board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  loop do
    if valid_move?(board, index) == true
     move(board, index, "X")
     display_board(board)
     break
   else
     puts "This is an invalid move, please enter a new one"
     input = gets.strip
     index = input_to_index(input)
   end
   end
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board = board, index)
if index.between?(0, 8)
  position_taken?(board, index)
end
end


  def move(array, jogada, value = "X")
    array[jogada] = value
  end

  def position_taken?(board, index)
    if board[index] == " "
      board[index] == " "
    elsif board[index] == ""
      board[index] == ""
    elsif board[index] == nil
      board[index] == nil
    elsif board[index] == "X"
      board[index] != "X"
    elsif board[index] == "O"
      board[index] != "O"
    end
  end
