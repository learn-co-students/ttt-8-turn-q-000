def valid_move?(board, input)
  position = input.to_i - 1
  if position >= 0 && position <= 8 && already_taken?(board,position)!= true
    true
  end
end

def already_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    true
  end
end

def move(board, input, character="X")
  position = input.to_i - 1
  board[position] = character
  display_board(board)
end

def turn(board)
  make_turn = 0
  while make_turn == 0
    puts "Please enter 1-9:"
    input = gets.strip
    if valid_move?(board, input) == true
      make_turn += 1
    else make_turn += 0
    end
  end
  move(board, input)
end 

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# test

# board = ["X"," "," "," "," "," "," "," "," "]
# if puts valid_move?(board,1) == true
#  true
# else false
# end