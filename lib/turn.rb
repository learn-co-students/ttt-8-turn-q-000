
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  x = position.to_i

  if x.between?(1,9)
     if position_taken?(board, x-1) == false
      true
    elsif position_taken?(board, x-1) == true
      false
    end
  else
    false
  end
end

def move(board, input, value = "X")
  board[input.to_i-1] = value
  display_board(board)
end


def position_taken?(board, position)
  if board[position] == " " || board[position] == ""
    false
  elsif board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  position = input

    if valid_move?(board, position)

      move(board, input, value="X")
    else
      puts "Invalid input, please enter a number between 1-9"
      turn(board)
    end
end

