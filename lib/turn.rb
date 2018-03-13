def display_board(arr)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

def valid_move?(arr, position)
  pos = position.to_i - 1
  if arr[pos] == 'X' || arr[pos] == 'O'  || pos > 9 || pos < 0
  false
  else
  true
  end
end

def move(arr, position, token = 'X')
  if valid_move?(arr, position)
  pos = position.to_i - 1
  arr[pos] = token
  else
  false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets
  until move(board, pos) do 
  #turn(board)
  puts "Please enter 1-9:"
  pos =gets
  end
  display_board(board)
end