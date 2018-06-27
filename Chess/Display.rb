require 'colorize'
require_relative 'Board'
require_relative 'Cursor'
require_relative 'Piece'
require_relative 'Null_Piece'

class Display
  
  attr_reader :board
  
  def initialize
    @board = Board.new
    @cursor = Cursor.new([0,0], board)
  end 
  
  def move_cursor
    while true
    
      render 
      @cursor.get_input
      system("clear")
    end
  end 
  
  def render
    arr = @cursor.cursor_pos

      row = 0
      while row < 8
        col = 0
        while col < 8
          print "|"
          if row == arr[0] && col == arr[1] && @cursor.selected.empty?
            piece = @board.grid[row][col]
            print piece.to_s.colorize(:yellow)
          elsif row == arr[0] && col == arr[1] && @cursor.selected.length == 1
            piece = @board.grid[row][col]
            print piece.to_s.colorize(:red)
          elsif @board.grid[row][col].is_a?(Null_Piece)
              piece = @board.grid[row][col]
              print piece.to_s.colorize(:green)
          else 
            piece = @board.grid[row][col]
             print piece.to_s
          end 
          print "|"
          
          col += 1
        end 
        puts " "
        row += 1
      end 

     
  end
end

d = Display.new
d.move_cursor 

 