def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} \n-----------\n #{array[3]} | #{array[4]} | #{array[5]} \n-----------\n #{array[6]} | #{array[7]} | #{array[8]} "
end

def turn(array)

  puts "Please enter 1-9:"
  x = gets.chomp
  if valid_move?(array,x)
    move(array,x)
  else
    turn(array)
  end
  display_board(array)
end

def move(array,loc,char = "X")
  array[loc.to_i-1] = char
  return array
end

def valid_move?(array,x)
  x = x.to_i
  x -= 1
  if position_taken?(array,x) == false && x.between?(0,8)
    true
    elsif position_taken?(array,x) || (x > 8 || x == -1)
    false
  end
end

def position_taken?(array,x)
  if array[x] == " " || array[x] ==  "" || array[x] == nil
     false
  elsif array[x] == "X"
    true
  elsif array[x] == "O"
    true
  end
end


