def display_board(board)
  puts board = " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  move = position.to_i - 1
  if(move >= 0 && move <= 9 ) && (board[move] == " " || board[move] == "")
    return true
  else
    return false
  end
end

def move(board, position, char = "X")
  if (valid_move?(board, position))
    position = position.to_i - 1
    board[position] = char
    display_board(board)
  else 
    puts "Please enter 1-9:"
    input = gets.strip
    until valid_move?(board, input)
      move(board, input)
    end
  end
end 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  move(board, input)
end
