

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
    return (board[position] == "X" || board[position] == "O")
end

def valid_move?(board, position)
    position = position.to_i - 1
    valid_space = (position >= 0 && position < board.length)
    open = !position_taken?(board, position)
    
    return (valid_space && open)
end

def move(board, position, symbol = "X")
    position = position.to_i - 1
    board[position] = symbol
    display_board(board)
end

def turn(board)
   puts "Please enter 1-9:"
   position = gets
   while (!valid_move?(board, position))
       puts "Invalid input. Please enter 1-9:"
       position = gets
   end
   
   move(board, position)
end


