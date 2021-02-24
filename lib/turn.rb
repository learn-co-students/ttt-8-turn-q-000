play = ["X","O","X","O","X","O","X","O","X"]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
display_board(play)

def valid_move?(board, position)
  if (position.to_i).between?(1, 9) == true && position_taken?(board, position) == false
    true
  else
    false
  end
end

def position_taken?(board, position)
  if board[(position.to_i) - 1] == " " || board[(position.to_i) - 1] == "" || board[(position.to_i) - 1] == nil
    false
  else (board[(position.to_i) - 1] == "X") || (board[(position.to_i) - 1] == "O")
    true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def move(board, position,char = "X")
  board[position.to_i - 1] = char
end

def turn (board)
  valid_move = false
  until valid_move == true
    puts "Please enter 1-9:"
    position = gets.strip
    if valid_move?(board, position)
      valid_move = true
      move(board, position)
      display_board(board)
    end
  end
end