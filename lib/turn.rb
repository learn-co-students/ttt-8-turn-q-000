#Def Display Board - using previous lesson
def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts  "-----------"
  puts  " #{board[3]} | #{board[4]} | #{board[5]} "
  puts  "-----------"
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position) #Define Postion Taken?
    if board[position.to_i - 1] == " " || board[position.to_i - 1] == "" || board[position.to_i - 1] == nil
      false
    elsif board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
      true
    end
end

#Def Valid Move - using previous lesson
def valid_move?(board, position)
  return true if !position_taken?(board, position) && position.to_i.between?(1, 9)
end

#Def Move - This accepts board/position/token(X/O, default to X)
def move(board, position, player = "X")
  board[position.to_i - 1] = player
end

def turn(board)
    puts "Please enter 1-9:"
    position = gets.strip
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end