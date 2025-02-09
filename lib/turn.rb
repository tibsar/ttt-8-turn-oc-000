def valid_move?(board, position)
  move = position.to_i - 1
  if move > 8 || move < 0
    false
  else
     !position_taken?(board, move)
  end
end

def position_taken?(board, position)
  board[position] == "X" || board[position] == "O"
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, char="X")
    board[position.to_i-1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  if !valid_move?(board, input)
    puts "Please enter valid input"
    input = gets.chomp
  else
    move(board, input)
    display_board(board)
  end
end