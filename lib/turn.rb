def display_board(board = [" "," "," "," "," "," "," "," "," "])
  print " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def valid_move?(board, position)
  (position_taken?(board, position) == false || position_taken?(board, position) == nil) &&
  (position.to_i-1 <= 8 && position.to_i-1 >= 0)
end

def position_taken?(board, position)
  !(board[position.to_i-1] == "" || board[position.to_i-1] == " " || board[position.to_i-1] ==  nil)
end

def move(board, position, character = "X")
  board[position.to_i-1] = character
end

def turn(board)
    puts "Please enter 1-9:"
    position = gets.strip
    while valid_move?(board, position) != true
      puts "Please enter 1-9:"
      position = gets.strip
    end
    move(board, position, character = "X")
    display_board(board)
end
