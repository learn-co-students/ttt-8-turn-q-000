board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

def display_board(b)
  s  =  " #{b[0]} | #{b[1]} | #{b[2]} \n"
  s +=  "-----------\n"
  s +=  " #{b[3]} | #{b[4]} | #{b[5]} \n"
  s +=  "-----------\n"
  s +=  " #{b[6]} | #{b[7]} | #{b[8]} \n"
  puts s
  s
end

def valid_move?(board, pos)
  pos = pos.to_i
  if position_taken?(board, pos)
    return false
  end
  pos.between?(1,9)
end

def position_taken?(board, position)
  pos = position-1
  spot = board[pos]
  spot != ' ' && spot != nil && spot != ''
end

def move(board, position, marker="X")
  pos = position.to_i - 1
  if(board[pos] == ' ' && pos.between?(0,8))
    board[pos] = marker
  else
    puts "Move not valid, please select and open slot on the board."
  end
end

def turn(board)
  puts "Please enter 1-9:"
  pos = ""
  loop do
    pos = gets.chomp
    break if(valid_move?(board, pos))
  end
  move(board, pos)
  display_board(board)
  pos
end
