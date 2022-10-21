class Stack
    def initialize
        @data = Set.new
        @newest = nil
        @previous = nil
    end

    def push(el)
        @data.add(el)
        @previous = @newest
        @newest = el
    end

    def pop
        @data.delete(@newest)
        @newest = @previous
    end

    def peek
        @newest
    end

end