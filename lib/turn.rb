def display_board(b)
  puts " #{b[0]} | #{b[1]} | #{b[2]} "
  puts "-----------"
  puts " #{b[3]} | #{b[4]} | #{b[5]} "
  puts "-----------"
  puts " #{b[6]} | #{b[7]} | #{b[8]} "
end

def valid_move?(b,p)
  if p.to_i>0 && !pos_taken?(b, p.to_i-1)
    return true
  else
    return false
  end
end

def pos_taken?(b,p)
  if(b[p] == " ")
    return false
  else
    return true
  end
end

def move(b, pos, c = "X")
  b[pos.to_i - 1] = c
end

def turn(b)
  puts "Please enter 1-9:"
  pos = gets.strip
  if valid_move?(b,pos)
    move(b,pos)
    display_board(b)
  else
    pos = gets.strip
  end
end
