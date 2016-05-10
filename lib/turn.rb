def display_board(array)
  counter = 0
  2.times do
    puts " #{array[counter]} | #{array[counter+1]} | #{array[counter+2]} "
    puts "-----------"
    counter += 3
  end
  puts " #{array[counter]} | #{array[counter+1]} | #{array[counter+2]} "
end

def move(board, pos, char="X")
  board[pos-1] = char
end

def position_taken?(array,pos)
  
  if(array[pos] == " " || array[pos] == "" || array[pos] == nil)
    false
  else
    true
  end
end

def valid_move?(array,pos)
  if(pos.to_i >= 1 && pos.to_i <= 9 && position_taken?(array,pos.to_i-1) == false)
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  until valid_move?(board,input)
    puts "Please enter 1-9:"
    input = gets.strip
  end
  move(board, input.to_i)
  display_board(board)
end