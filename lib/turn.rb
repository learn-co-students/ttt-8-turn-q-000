def display_board(tic)
puts " #{tic[0]} | #{tic[1]} | #{tic[2]} "
puts "-----------"
puts " #{tic[3]} | #{tic[4]} | #{tic[5]} "
puts "-----------"
puts " #{tic[6]} | #{tic[7]} | #{tic[8]} "
end

#--------------------------------------------------------------------------------------

def valid_move?(tic,position)
  post = position.to_i - 1
  if position_taken?(tic,position) == false && post.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(tic, position)
  post = position.to_i - 1
  if tic[post] == " " || tic[post] == "" || tic[post] == nil
    false
  else
    true
  end
end

#--------------------------------------------------------------------------------------

def move(tic,position,mark = "X")
  post = position.to_i - 1
  tic[post] = mark
end

#--------------------------------------------------------------------------------------

def turn(tic)
  puts "Please input position number (1-9)!"
  position = gets.strip

  if valid_move?(tic,position) == true
    move(tic, position, mark = "X")
    display_board(tic)
  else
    puts "INPUT ERROR!"
    turn(tic)
  end
end
