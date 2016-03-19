def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end  

def valid_move?(board, pos)
  pos = pos.to_i
  board[pos-1] == " " && pos.between?(1,9)
end

def move(board, pos, player = "X")
  board[pos.to_i-1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
  if valid_move?(board,pos)
    move(board, pos)
  else
    while !valid_move?(board,pos) do
      puts "Please enter 1-9:"
      pos = gets.strip
    end 
  end
  display_board(board)
end      
      