def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position) == true
    puts move(board, position, char = "X")
    display_board(board)
  else
    turn(board)
  end
end



def valid_move?(board, position)
  if position.to_s.between?("0", "9") && position_taken?(board, position) == false
    return true
  elsif position_taken?(board, position) == true
    return false
   end
end


def position_taken?(board, position)
  if board[position.to_i - 1] == " " || board[position.to_i - 1] == "" || board[position.to_i - 1] == nil
    return false
  elsif board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
    return true
  end
end


def move(board, location, char = "X")
  board[location.to_i - 1] = char
end