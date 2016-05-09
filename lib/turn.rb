def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, input)
  if position_taken?(board, input) && input.to_i.between?(1, 9)
    false
  elsif input.to_i.between?(1, 9)
    true
  else
    false
  end
end

def position_taken?(board, input)
  if board[input.to_i - 1] == " "
    false;
  elsif board[input.to_i - 1] == ""
    false;
  elsif board[input.to_i - 1] == nil
    false;
  else true;
  end
end


def move(board, input, value="X")
  board[input.to_i - 1] = value
end

def turn(board)

  puts "Please enter 1-9:"
  gets("1")
  if valid_move?(board, "1")
  move(board, "5", value="X")
  else
    turn(board)

    gets("1")

  end

  display_board(board)

end
