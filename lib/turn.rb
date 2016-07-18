def turn(board)
  puts "Please enter 1-9:"
  position = gets.to_i
  position = input_to_index(position)

  until valid_move?(board,position) == true
    puts "Please enter 1-9:"
  end
  move(board,position,character="X")
end

 def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

 def input_to_index(position)
   position = position.to_i
   position - 1
 end

 def valid_move?(board,position)
   if position.between?(0,8) && !position_taken?(board,position)
     return true
   else
     return nil
   end
  end

  def position_taken?(board,position)
    if board[position] == " " || board[position] == "" || board[position] == nil
        return false
    else
        return true
      end
  end

 def move(board,position,character="X")
   board[position] = character
 end
