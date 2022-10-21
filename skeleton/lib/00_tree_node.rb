class PolyTreeNode
    attr_reader :value, :parent, :children

    def initialize(value)
        @value = value
        @parent = nil
        @children = Array.new
    end

    def parent=(parent_node)
        if parent_node == nil
            @parent = nil
        elsif @parent.nil?
            @parent = parent_node
                if !parent_node.children.include?(self)
                    parent_node.children << self
                end
        elsif !@parent.nil?
            @parent.children.delete(self)
            @parent = parent_node
            parent_node.children << self
        
        end

    end

end