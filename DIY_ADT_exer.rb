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

class Queue
    def initialize
        @data = Array.new

    end

    def enqueue(ele)
        @data << ele            
    end

    def dequeue
        @data.shift
    end

    def peek
        @data[0]
    end

end

class Map
    def initialize
        @data = Array.new
    end

    def set(key, val)
        @data << [key, val]
    end

    def get(key)
        @data.each do |sub|
            if sub[0] == key
                return sub[1]
            end
        end
        return nil
    end

    def delete(key)
        @data.each do |sub|
            if sub[0] == key
                @data.delete(sub)
            end
        end
        return nil
    end

    def show
        @data
    end

end