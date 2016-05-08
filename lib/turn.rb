#display tic-tac-toe board
def display_board(display)
    puts " #{display[0]} | #{display[1]} | #{display[2]} "
    puts "------------"
    puts " #{display[3]} | #{display[4]} | #{display[5]} "
    puts "------------"
    puts " #{display[6]} | #{display[7]} | #{display[8]} "
end

#position_taken?
def position_taken?(board, position)
    if board[position] == "" || board[position] == " " || board[position] == nil
        return false
    else board[position] == "X" || board[position] == "O"
        return true
    end
end

#valid_move?
def valid_move?(board, position)
    input = position.to_i - 1
    if !position_taken?(board, input) && input.between?(0,8)
        return true
    else
        return false
    end
end

#make a move
def move(board, input, n = "X")
    if valid_move?(board, input) && (n == "X" || n == "O")
        board[input.to_i - 1] = n
        return true
    else
        return false
    end
end

#it's your turn: enter number from 1-9
def turn(board)
    # ask user for their move by position 1-9
    puts "Please enter 1-9:"
    # receiving the user input
    # if move is valid, make the move and display the board to the user
    input = gets.strip
    # if the move is invalid, ask for a new move until valid move is reeived
    if !move(board, input)
        puts "Number is not valid"
        puts "Please enter 1-9:"
        input = gets.strip
    end
    display_board(board)
end