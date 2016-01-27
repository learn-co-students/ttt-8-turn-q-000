class TicTacToe
  attr_accessor :matrix

  def initialize(board)
    @matrix = Hash[board.each_with_index.map { |v, i| [i,' ' + v + ' '] }]
  end

  def print_board
    print row1
    print horizontal_ruler
    print row2
    print horizontal_ruler
    print row3
  end
  
  private
  def horizontal_ruler
    "-----------"
  end

  def row1
    matrix[0] + '|' + matrix[1] + '|' + matrix[2]
  end

  def row2
    matrix[3] + '|' + matrix[4] + '|' + matrix[5]
  end

  def row3
    matrix[6] + '|' + matrix[7] + '|' + matrix[8]
  end
end

def turn(board) 
  puts "Please enter 1-9:"
  input = gets.chomp
  player = 'X'
  if !valid_move?(board, input)
    turn(board)
  end
   move(board, input, player)
   display_board(board)
end

def move(board, position, player)
  position = position.to_i - 1
  board[position] = player
end

def display_board(board)
  @ttt = TicTacToe.new(board)
  @ttt.print_board
end

def valid_move?(board, position)
  position = position.to_i
  if position == 0
    false
  elsif position_on_board?(board, position) && !occupied?(board, position)
    true
  else
    false
  end
end

def position_on_board?(board, position)
  if (position - 1) <= board.count
    true
  else
    false
  end
end

def occupied?(board, position)
  position = position - 1
  if board[position].include?("X") || board[position].include?("O")
    true
  else
    false
  end
end
