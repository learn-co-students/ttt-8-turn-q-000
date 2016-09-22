def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  until valid_move?(board, position)
    puts "Please enter 1-9:"
    position = gets.strip
    
    #using recursion. doesn't perform within the loop.
    #turn(board)
  end

    move(board, position, "X")
    display_board(board)   
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1, 9) && !position_taken?(board, position)
    true
  else
    false
  end
end

def position_taken?(board, position)
  pos = position.to_i
  if board[pos -1] == "X" || board[pos -1] == "O"
    true
  elsif board[pos -1] == "" || board[pos -1] == " " || board[pos -1] == nil
    false
  end
end

def move(board, position, char="X")
  board[position.to_i - 1] = char
end
