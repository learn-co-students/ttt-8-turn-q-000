board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else
    turn(board)
  end
end

 def valid_move?(board, index)
      if (board[index] == " " || board[index] == "") && (index <=9 && index >= 0)
        return true
      else
        return false
        end
      end

def input_to_index(input)
     index = input.to_i - 1
end

def move(array, index, value = "X")
   array[index] = value
end
