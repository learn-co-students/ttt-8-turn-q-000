# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Converts the user input to an integer
def input_to_index(user_input)
    user_input.to_i - 1
end

# Checks if the move is valid
def valid_move?(board, index)
    index.between?(0,8) && !position_taken?(board, index)
end

# Checks if the position is taken
def position_taken?(board, index)
    ![" ", "", nil].include?(board[index])
end

def move(board, index, character = "X")
    board[index] = character
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
        move(board,index)
        display_board(board)
    else
        turn(board)
    end
end
