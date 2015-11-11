def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,pos)
    posNum = pos.to_i
  if position_taken?(board,posNum)==false && posNum.between?(1,9)
    true
    elsif posNum.between?(1,9) && position_taken?(board,posNum) == true
    false
  end
end

def position_taken?(board,pos)
  posNum = pos.to_i
  posNum = posNum-1
  if board[posNum]=="" || board[posNum] ==" " || board[posNum] == nil
    return false
  else
    return true
    end
end

def move(board,pos,char = "X")
    pos = pos.to_i
  pos = pos -1
  board[pos] = char

  puts board
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
  if valid_move?(board,pos) == true
    move(board,pos)#,char)
  else
  #until valid_move?(board,pos) == true
  puts "Please enter 1-9:"
  pos = gets.strip
 end
display_board(board)
end
#end