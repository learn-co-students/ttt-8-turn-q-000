

def display_board(board)
     puts " #{board[0]} | #{board[1]} | #{board[2]} "
     puts "------------"
     puts " #{board[3]} | #{board[4]} | #{board[5]} "
     puts "------------"
     puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, value = "X")
    board[position.to_i - 1] = value
end

def position_taken?(board, position)
     if (board[position.to_i - 1] == "") || (board[position.to_i - 1] == " ") || (board[position.to_i - 1] == nil)
         return true
     elsif (board[position.to_i - 1] == "X") || (board[position.to_i - 1] == "O")
         return false
    end
end 

def between?(position) 
     if (position.to_i >= 1)&&(position.to_i <=9)
         return true 
      end
end

def valid_move?(board, position)
    if (between?(position) == true) && (position_taken?(board, position) == true)
      return true
    end

end

def turn(board)
   puts "Please enter 1-9:"
   position = gets.strip
   counter = 0 
   if valid_move?(board, position)
      move(board, position)
      display_board(board)
   else turn(board)
   end

end


