# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]
  
  def won?(board)
    WIN_COMBINATIONS.each do |win_combination|
      
    if win_combination.all?{|symbol| board[symbol] == "X"}
      return win_combination
    elsif win_combination.all?{|symbol| board[symbol] == "O"}
      return win_combination
    end
    end
    return false
  end
  
  def full?(board)
    board.all? do |taken|
      taken == "X" || taken == "O"
 end
end    

def draw?(board)
 !won?(board) && full?(board)
 end
 
 def over?(board)
   draw?(board) || won?(board) 
 end 
 
 def winner(board)
   if draw?(board) || !full?(board) && !won?(board)
     return nil
   elsif board[won?(board)[0]] == "X"
   return "X"
   elsif board[won?(board)[0]] == "O"
   return "O"
   end
 end
 
    
    