require_relative 'pieces'
require_relative 'Null'



class Board

attr_accessor :grid

    def initialize
        @grid = Array.new(8) {Array.new(8)}
        @sentinal = Null.instance
        
        
    end


def setup_board
    (0..7).each do |col|
            #placing  white and black pieces
            grid[0][col] = Piece.new(:black, self,[0,col])
            grid[1][col] = Piece.new(:black, self,[1,col])
            grid[6][col] = Piece.new(:white, self,[6,col])
            grid[7][col] = Piece.new(:white, self,[7,col])
            #placing null pieces
            (2..5).each do |row|
                grid[row][col] = @sentinel
            end
        end
    end
 
    # populate the board
    #top two rows and bottom 2 rows with piece.new
    #in the center we fill with emepty spaces (sential)



def [](pos)
    row, col = pos
    @grid[row][col]
end

def []=(pos, value)
    row, col = pos
    @grid[row][col] = value
end

 def valid?(pos)
        row , col = pos
        pos.all? {|i| i >= 0 && i < @grid.length}
 end
   
 def empty?(pos)
    self[pos].empty?
  end



def move_piece(start_pos, end_pos)
        piece = self[start_pos]
    if self[end_pos] == @sentinel
         self[end_pos] = piece
        self[start_pos] = @sentinel
    end
end
end
     # able to move piece from start to end
    #can only move your piece when object on end side of a null piece
    # afer you move piece, the origal spot becomes null piece because origal piece 
    #is no longer occupying that spot






 