# display current state of board
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# make a move
def move(board, position, token = "X")
    position = position.to_i
    board[position - 1] = token
end

# check if valid move
def valid_move?(board, position)
    position = position.to_i
    if (position.between?(1, 9))
        if (position_taken?(board, position))
            return false
        else
            return true
        end
    else
        return false
    end
end

# check if position is taken
def position_taken?(board, position)
    if ((board[position - 1] == "X") || (board[position - 1] == "O"))
        return true
    else
        return false
    end
end

# player turn
def turn(board)
    puts "Please enter 1-9:"
    input = gets
    if (valid_move?(board, input))
        move(board, input)
        display_board(board)
    else
        if (!(valid_move?(board, input)))
            turn(board)
        end
    end
end