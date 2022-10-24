require 'byebug'

require_relative '00_tree_node'

class KnightPathFinder
MOVES = [
    [-2, -1],
    [-2,  1],
    [-1, -2],
    [-1,  2],
    [ 1, -2],
    [ 1,  2],
    [ 2, -1],
    [ 2,  1]
  ]
    def self.valid_moves(pos)
        valid_moves = Array.new
        [-1, 1].each do |i|
            [-2, 2].each do |j|
                valid_moves.push([(pos[0] + i), (pos[1] + j)], [(pos[0] + j), (pos[1] + i)])
            end
        end
        valid_moves.select do |sub| 
            (sub[0] < 8 && sub[0] > -1) && (sub[1] < 8 && sub[1] > -1)
        end
       valid_moves
    end

    attr_reader :considered_positions

    def initialize(pos)
        @start_pos = pos
        @root_node = PolyTreeNode.new(pos)
        @considered_positions = Array.new()
    end

    def new_move_positions(pos)
        valid_moves = KnightPathFinder.valid_moves(pos)
        final_valid_moves = Array.new
        valid_moves.each do |move|
            # debugger
            if !@considered_positions.include?(move)
                #@considered_positions << move
                final_valid_moves << move
            # else
            #     valid_moves.delete(move)
            end
        end

        # valid_moves
        final_valid_moves
    end

    def build_move_tree
        queue = Array.new
        queue << @root_node
        # p queue
        # p @root_node
        # p 'before ___________'
        until queue.empty?
            # debugger
            # p queue
            # p 'start of until _______'
            node = queue.shift
            # @considered_positions << node.value if !@considered_positions.include?(node.value)
            # @considered_positions = @considered_positions.uniq!
            new_moves = new_move_positions(node.value)
            @considered_positions += new_moves
            @considered_positions.uniq!
            new_moves.each do |move|
                kiddo = PolyTreeNode.new(move)
                node.add_child(kiddo)
                # queue << kiddo
            end
          

            queue += node.children
        end
        p @considered_positions.length
    end

    # def find_path

    # end



end
