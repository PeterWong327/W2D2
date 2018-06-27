
class Queen < Piece
    include 'Slideable'
  
  def move_dirs
      horizontal_dirs + diagonal_dirs
  end
  
  def to_s
    "👑"
  end 
  

  
  
  
  
  
end 