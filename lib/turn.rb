def display_board(board)
  dottedline = "-----------"
  line1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  line2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  line3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  puts line1
  puts dottedline
  puts line2
  puts dottedline
  puts line3
end

def valid_move?(board,position)
  true_position = board[(position.to_i)-1]
  if true_position != "X" && true_position != "O" && position.to_i.between?(1,9)
    return true
  else
    return false
  end
end

def move (board, position, team="X")
  board[(position.to_i)-1]=team
end

def turn (board)
  puts "Please enter 1-9:"
  turnmove = gets.strip
  if valid_move?(board,turnmove) == false
    puts "invalid"
    puts "Please enter 1-9:"
    turnmove = gets.strip
  end
  move(board,turnmove)
  display_board(board)
end