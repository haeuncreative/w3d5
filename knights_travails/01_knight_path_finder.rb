require_relative '00_tree_node'

class KnightPathFinder

    # def self.valid_moves(pos)
    #     #full range 
    #     #move 
    #     (0...pos_row)
    #         #move up one 
    #         ()
    #     (pos_row+1..pos_row+2)
    # end
 
    def self.where_on_board?(pos)
        # x = pos[0]
        # y = pos[1]
        x, y = pos[0], pos[1]

        case [x, y]
            when [x, y] == [0, 0]
                return 'corner'
            when [x, y] == [7, 0]
                return 'corner'
            when [x, y] == [0, 7]
                return 'corner'
            when [x, y] == [0, 7]
                return 'corner'
            when [x - 1, y + 1] == [0, 7]
                return 'one_space_corner'
            when [x - 1, y - 1] == [0, 0]
                return 'one_space_corner'
            when [x + 1, y + 1] == [7, 7]
                return 'one_space_corner'
            when [x + 1, y - 1] == [7, 0]
                return 'one_space_corner'
            # when x - 1 == 0 || x + 1 == 7
            #     if y > 2 && y < 6
            #         return 'one_space_only'
            #     end
            # when y - 1 == 0 || y + 1 == 7
            #     if x > 2 && x < 6
            #         return 'one_space_only'
            #     end
            # else
            #     return 'full range'
            end
    end

    def self.valid_length(pos, pos2)
        row1 = pos[0]
        col1 = pos[1]
        row2 = pos2[0]
        col2 = pos2[1]

        row_diff = (row1 - row2).abs
        col_diff = (col1 - col2).abs
                

        if row_diff == 1 && col_diff == 2
            return true
        elsif row_diff == 2 && col_diff == 1
            return true
        end
        return false
    end

    


    def initialize(pos)
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
