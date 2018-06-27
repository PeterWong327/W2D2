module Slideable
  
  
  def horizontal_dirs
    HORIZONTAL_DIRS
  end 
  
  def diagonal_dirs
    DIAGONAL_DIRS
  end 
  
  def moves #call every grow... on every element 
    #all moves, possible or not.
    result = [] 
    move_dirs.each do |dir|
      dx, dy = dir
      result << grow_unblocked_moves_in_dir(dx, dy) #[]
      # result << dir 
    end 
    result
  end
  
  def grow_unblocked_moves_in_dir(dx,dy) #(0, -1)   #all possible spots in one direction
    #iterate thru "moves" and select all valid_moves?(move)
    result = []
    row_pos = @current_pos[0]
    col_pos = @current_pos[1]
    
    until !row_pos.between?(0,7) && !col_pos.between?(0,7) && @board.grid[row_pos + dx][col_pos + dy].is_a?(Piece)
      result << [row_pos + dx, col_pos + dy]
    end 
    
    result
  end
  
  
  
  private

  HORIZONTAL_DIRS = [
    [0, -1],
    [-1, 0],
    [1, 0],
    [0, 1]
  ]
  
  DIAGONAL_DIRS = [
    [-1, -1],
    [-1, 1],
    [1, -1],
    [1, 1]
  ]
  
  
  attr_reader :horizontal_dirs, :diagonal_dirs
end 

