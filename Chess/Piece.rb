
class Piece
  
  attr_reader :pos, :board
  
  def initialize(pos,board)
    @pos = pos 
    @board=board
  end 
  
  def to_s
    " S "
  end 
  
  def moves
    
  end 
  
end 