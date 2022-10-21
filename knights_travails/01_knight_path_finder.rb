require_relative '00_tree_node'

class KnightPathFinder

    # 8x8 board
    #Full Range
    # x
    # x x 0
    # 
    # One tile space
    #   o
    #   x
    # x x
    # 
    # No tile space
    # o
    # x
    # x x
    # #edge cases
    #   Corners: [0,0], [7,0], [0,7], [7,7]
    #   1 space coners: [(x - 1 == 0), (y + 1 == 7)], [(x - 1 == 0), (y - 1 == 0)], [(x + 1 == 7), (y + 1 == 7)], [(x + 1 == 7), (y - 1 == 0)]
    #   1 space only (ranges):  1. [[(x - 1 == 0) || (x + 1 == 7)] && (2 < y < 6)] 2.[[(y - 1 == 0) || (y + 1 == 7)] && (2 < x < 6)]

    #     
    def self.valid_moves(pos)
        #full range 
        #move 
        (0...pos_row)
            #move up one 
            ()
        (pos_row+1..pos_row+2)
    end


    def intialize(pos)
        @start_pos = pos
        @root_node = PolyTreeNode.new(pos)
        @considered_positions = Array.new
    end

    def new_move_positions(pos)

    end

    def build_move_tree

    end

    def find_path

    end



end
