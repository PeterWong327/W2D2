require_relative 'Slideable'

class Rook < Piece
  
  include Slideable
  
  def initialize(pos, board)
    super(pos, board)
  end 
  def move_dirs
      horizontal_dirs
  end
  
  def to_s
    " ♖ "
  end 
  

  
  
  
  
  
end 