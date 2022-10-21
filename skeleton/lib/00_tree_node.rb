require "byebug"

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

    def add_child(child_node)
        child_node.parent = self
    end 

    def remove_child(child_node)
        if child_node.parent.nil?
            raise "Not a child"
        else 
            child_node.parent = nil
        end 
    end

    def inspect
        { 'value' => @value, 'children' => @children }.inspect
    end

    def dfs(target_value)
        return self if self.value == target_value
        return nil if self.children.empty?
        self.children.each do |child| 
            child_dfs = child.dfs(target_value)
            return child_dfs unless child_dfs.nil?
        end 
        nil
    end 

    

end

