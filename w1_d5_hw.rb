  class Stack
    attr_reader :stack_array

    def initialize
        @stack_array = []
    end

    def push(el)
     @stack_array.push(el)
    end

    def pop
      @stack_array.pop
    end

    def peek
      @stack_array[-1]
    end
  end

a = Stack.new
# p a.push("fire")
# p a.push("happy")
# p  a.peek
# p  a.stack_array
# p  a.pop

class Queue
    attr_reader :@queue_array
    def initialize
        @queue_array = []
    end

    def enqueue(ele)
        @queue_array.push(ele)
    end

    def dequeue
        @queue_array.pop
    end

    def peak
        @queue_array[-1]
    end

end

class Map
    def initialize
        @map_array = []
    end

    def set(key, value)
        @map_array.any? do |pair|
            if !pair[0].include?(key)
                @map_array << [key, value]
            end
        end
    end

    def get(key)
        @map_array.each do |pair|
            if pair[0] == key
                return pair[1]
            end
        end
    end

end