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
  input = gets.strip

  if valid_move?(board, input)
  move(board, input, value="X")

elsif valid_move?(board, input) == false
  input = gets.strip

end

    display_board(board)
end
