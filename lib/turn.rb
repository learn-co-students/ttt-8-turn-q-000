def display_board(board=[" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, a, character = "X" )

board[ a.to_i - 1 ] = character
end

def valid_move?(board, position)
  if position_taken?(board, position.to_i - 1) || (!position.to_i.between?(1, 9))
    false
    else
    true
  end
end

def position_taken?(board, position)
  if (board[position.to_i] == "X") || (board[position.to_i] == "O")
    true
    elsif board[position.to_i] == " "
    false
    elsif board[position.to_i] == ""
    false
    else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
    if (valid_move?(board, position))
     move(board, position)
      else turn(board)
        end
display_board(board)
  end


