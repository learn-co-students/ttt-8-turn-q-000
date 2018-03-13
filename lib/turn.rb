def turn(board)
    puts "Please enter 1-9:"
    position = gets.strip
    position = position.to_i
    if valid_move?(board, position.to_s)
        move(board, position)
    else
        turn(board)
    end
    display_board(board)
end

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, character="X")
    board[position-1] = character
end

def valid_move?(board, position)
    position = position.to_i
    if position.between?(1,9) && !position_taken?(board, position-1)
        return true
    end
    return false
end

def position_taken?(board, position)
    if board[position] == " " || board[position] == "" || board[position] == nil
        return false
    end
    
    return true
end