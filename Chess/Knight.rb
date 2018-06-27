
class Knight < Piece
  
  include 'Stepable'
  
  def move_dirs
    L_dirs
  end
  
  def to_s
    "♖"
  end 
  

  
  
  
  
  
end 