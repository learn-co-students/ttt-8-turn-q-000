def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
   # until valid_move?(board, position) == true
      #display_board(board)
    puts "invalid"
    turn(board)
  end
   #display_board(board)
  #  move(board, position)

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, player = "X")
  board[position.to_i - 1] = player
end

def valid_move?(board, position)
  #index = position.to_i - 1
  if position.to_i.between?(1,9)
    if !position_taken?(board, position.to_i - 1)
      true
  else
    false
    end
  end
end


def position_taken?(board, position)
  if [" ", "", nil].include?(board[position])
    false
  else ["X", "O"].include?(board[position])
    true
  end
end