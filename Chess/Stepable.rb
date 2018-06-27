module Stepable
  
  
  def L_dirs
    L_DIRS
  end 
  

  
  def moves #call every grow... on every element 
    #all moves, possible or not.
    result = [] 
    move_dirs.each do |dir|
      result << dir 
    end 
    result
  end
  
  def grow_unblocked_moves_in_dir(dx,dy) #all possible spots in one direction
    
  end
  
  
  
  private

  L_DIRS = [
    [2, -1],
    [2, 1],
    [-2, 1],
    [-2, -1],
    [-1, -2],
    [-1, 2],
    [1, -2],
    [1, 2],
            
  ]
  

  
  
  attr_reader :L_DIRS
end 


