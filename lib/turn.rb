def valid_move?(board,index)
  index>=0&&index<=8&&!position_taken?(board,index)? true:false
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  (board[index]==""||board[index]==" "||board[index]==nil)? false:true

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  user_input.to_i-1

end

def move(board,index,char="X")
  board[index]=char
  return board
end
