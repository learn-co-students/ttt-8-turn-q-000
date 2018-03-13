

# code your move method here!

def move(board, position, value = "X")
    board[position.to_i - 1] = value
end
