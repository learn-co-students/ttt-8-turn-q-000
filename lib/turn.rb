def display_board(board)

  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  
  while valid_move?(board,position) == false
    puts "invalid move, please enter again"
    position=gets.strip
  end 
  move(board,position,char = "X")
  display_board(board)
end

def valid_move?(board,position)
  if position.to_i.between?(1,9) && !position_taken?(board,position.to_i-1) 
    return true
  else
    return false
  end
  
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,position)
  (board[position] != " ") && (board[position] != "") && (board[position] != nil)
end  

def move(board,pos,char = "X")

    pos = pos.to_i - 1

    def update_array_at_with(array,position,value)
    array[position] = value
    end
    
   update_array_at_with(board,pos,char)
   
end

