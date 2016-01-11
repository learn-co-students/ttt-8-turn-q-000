def display_board(board)
  puts [" #{board[0]} | #{board[1]} | #{board[2]} ", "-----------", " #{board[3]} | #{board[4]} | #{board[5]} ", "-----------", " #{board[6]} | #{board[7]} | #{board[8]} "]
end

def move(board, position, player)
  board[position.to_i - 1] = player
end

def valid_move?(board, position)

  def position_taken?(board, position)
    if board[position] == " " || board[position] == "" || board[position] == nil
      false
    elsif board[position] == "X" || board[position] == "O"
      true
    end
  end

  if position_taken?(board, position.to_i-1)
    false
  elsif position.to_i >= 1 && position.to_i <= 9 
    true
  end
end

def turn(board)
puts "Please enter 1-9:"
position = gets.strip
player = "X"

if valid_move?(board, position) == true
  move(board, position, player)
  display_board(board)
else 
  until valid_move?(board, position) == true
  puts "Please enter 1-9:"
  position = gets.strip
  end
  move(board, position, player)
  display_board(board)
end


end



  



