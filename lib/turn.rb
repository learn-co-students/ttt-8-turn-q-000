
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def turn(board)
  loop do
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
    break
  end
end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
     true
  else
    false
  end
end

def position_taken?(board, index)
    if board[index] == "X" || board[index] == "O"
      return true
    elsif board[index] == " " || board[index] == ""
      return false
    else
      false
      end
    end

  def input_to_index(user_input)
    return user_input.to_i - 1
  end

  def move (board, index, char= "X")
    board[index] = char
  end
