def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    isValidMove = valid_move?(board, index)
    until isValidMove==true do
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
      isValidMove = valid_move?(board, index)
      if isValidMove
        move(board, index)
        display_board(board)
      end
    end
  end
end

def display_board(squares)
   puts " #{squares[0]} | #{squares[1]} | #{squares[2]} "
   puts "-----------"
   puts " #{squares[3]} | #{squares[4]} | #{squares[5]} "
   puts "-----------"
   puts " #{squares[6]} | #{squares[7]} | #{squares[8]} "
 end

def valid_move?(board, index)
  if index>=0 && index<=8 && board[index]!="X" && board[index]!="O"
    return true
  else
    return false
  end
end

def move(board, index, character = "X")
    board[index] = character
end

def input_to_index(input)
   index = input.to_i - 1
   return index
end
