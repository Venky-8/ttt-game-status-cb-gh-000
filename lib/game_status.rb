# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  win_arr = cmp_win
  if(win_arr == null)
    false
  win_arr
end

def cmp_win(board)
  WIN_COMBINATIONS.find{|win|
    position_taken?(board, win[0]) and
    position_taken?(board, win[1]) and
    position_taken?(board, win[2])
  }
end

def full?(board)
  board.none? {|i| i == nil and i == " "}
end

def draw?(board)
  full?(board) and won?(board) == nil
end
