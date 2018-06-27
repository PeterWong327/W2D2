
class Pawn < Piece
  
  def initialize(pos,board)
    super(pos,board)
  end 
  def move_dirs
      @pos[0] = @pos[0]+1 
  end
  
  def at_start_row?
   @pos[0] == 1 || @pos[0]==6      
  end 
  
  def to_s
  "♟"  
  end 
  
  def forward_dir
    return -1
  end 
  
  def forward_steps 
    if at_start_row?
        return forward_dir*2
    end 
  end 
   
end 