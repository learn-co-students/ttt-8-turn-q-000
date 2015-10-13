

def turn(board)
puts "Please enter 1-9:"
position=gets.strip

  if valid_move?(board, position)==true
  move(board, position, choice="X")
  else 
  puts "Please enter 1-9:"
  position=gets.strip
  until valid_move?(board, position)==true
  move(board, position, choice="X")

  end
  end
display_board(board)
end



def display_board(board=[" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def move(board, position, choice="X")
board[position.to_i-1]=choice

  def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  
  end
end


def valid_move? (board, position)
  position = position.to_i-1
      
      if position_taken?(board, position)
      return false
        
      elsif !position.between?(0,8)
      return false
        
      else
      return true

  end
  end

def position_taken?(board, position)

  if 
  board[position]==" "|| board[position]==""|| board[position]==nil
  return false

  else
  board[position]=="X"|| board[position]=="O"
  return true

end
end


