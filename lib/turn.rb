

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def move(board, position, type="X")
  board[position.to_i-1]=type

end

def valid_move?(board,position)
  if (position.to_i.between?(1,9)) && (position_taken?(board,position.to_i-1) == false)
    true
  else
    false
  end
end

def position_taken?(board,position)
  if board[position] == "X" || board[position] == "O"
    true
  else
    false
  end
end

def turn(board)

  puts "Please enter 1-9:"
  input=gets.strip
  board[input.to_i]="X"
  until valid_move?(board,input) == true
    puts "Please input another number:"
    input=gets.strip
    board[input.to_i]="X"
display_board(board)

end
end















