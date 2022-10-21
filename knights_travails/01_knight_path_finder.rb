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
    # 
    # 
    # 
    #     
    def self.valid_moves(pos)

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
