

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  valid = nil

  if (position.to_i - 1).between?(0,8) && position_taken?(board, position.to_i - 1) == false
    valid = true
  else
    valid = false
  end

  valid

end

def position_taken?(board, position)
  taken = nil
  if(board[position] == " " || board[position] == "" || board[position] == nil)
    taken = false
  else
    taken = true
  end

  taken
end

def move(board, position, player = "X")
  board[position.to_i - 1] = player
end

def turn(board)

  valid = false

  while valid == false

    puts "Please enter 1-9:"
    position = gets.strip

    if valid_move?(board, position) == true
      move(board, position)
      display_board(board)
      valid = true
    end
  end
end
