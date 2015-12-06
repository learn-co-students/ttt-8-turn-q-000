def display_board(arg)
    puts " #{arg[0]} | #{arg[1]} | #{arg[2]} "
    puts "-----------"
    puts " #{arg[3]} | #{arg[4]} | #{arg[5]} "
    puts "-----------"
    puts " #{arg[6]} | #{arg[7]} | #{arg[8]} "
end

def move(board, position, value = "X")
  board[(position.to_i)-1] = value
end

def valid_move?(board,position)
  if (position_taken?(board, position.to_i) == false) && (position.to_i.between?(1,9) == true)
    true
  else (position_taken?(board, position) == true) || (position.to_i.between?(1,9) == false)
    false
  end
end
    
def position_taken?(board, position)
  if (board[(position.to_i-1)] == " " || "") == true && (board[(position.to_i-1)] != "X" || "O")
    false
  else board[(position.to_i-1)] == "X" || "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
    if valid_move?(board,position) == true
      move(board,position)
      display_board(board)
       elsif  valid_move?(board,position) != true
          loop do
          puts "Sorry, please try a valid entry from 1-9:"
          position = gets.strip
          if valid_move?(board,position) == true
              break
            end
        end
    end
end 
