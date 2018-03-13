def turn(board)
  puts "Please enter 1-9:"
  play = gets.strip
  until valid_move?(board,play)
    puts "That isn't a valid move, please play again!"
    play = gets.strip
  end
move(board,play)
display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board,loc,char = "X")
  board[loc.to_i-1] = char
end

def valid_move?(board,position)
  if position_taken?(board,position.to_i-1)
    return false
  elsif !((position.to_i >= 1) && (position.to_i <= 9))
    return false || nil
  else
    return true
      end
end

def position_taken?(board, position)
  if (board[position] == "") || (board[position] == " ") || (board[position] == nil)
    return false
  elsif (board[position] == "X") || (board[position] == "O")
    return true
    end
end