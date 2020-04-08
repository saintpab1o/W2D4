class Piece

    attr_reader :board, :color
    attr_accessor :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
        
    end

   
end

# class King < Piece
  # include Stepable?