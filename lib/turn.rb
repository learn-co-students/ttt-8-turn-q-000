require 'pry'
def display_board(board)
  cnt = 0
  str = ""
  until cnt == board.count
    cnt += 1
    if position_taken?(board,cnt)
      str = str + " #{board[cnt - 1]} "
    else
      str = str + "   "
    end

    if cnt % 3 == 0
      puts str
      if cnt < 8
      puts "-----------"
      end
      str = ""
    else
      str = str + "|"
    end
  end
end

def valid_move?(board,position)
  pos = position.to_i
  if pos < 10 && pos > 0 && !position_taken?(board,pos)
    true
  else
    false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,position)
  pos = position.to_i
  val = board[pos-1]
  if val == "X" || val =="O"
    true
  else
    false
  end
end

def move(board, pos, player = "X")
    board[pos.to_i-1] = player
end

def newBoard
  return ["","","","","","","","",""]
end

def curTurn(board)
  xcnt = 0
  board.each do |x|
    if x == "X"
      xcnt += 1
    elsif x == "O"
      xcnt -= 1
    end
  end
  if xcnt <= 0
    player = "X"
  else
    player = "O"
  end
  return player
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip

  until valid_move?(board,pos)
    puts "Please enter 1-9:"
    pos = gets.strip
  end
  move(board,pos,curTurn(board))
  display_board(board)
end