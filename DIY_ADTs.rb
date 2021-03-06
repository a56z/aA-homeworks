class Stack
    def initialize
      # create ivar to store stack here!
      underlying_array = []
    end

    def push(el)
      # adds an element to the stack
      underlying_array.push(el)
    end

    def pop
      # removes one element from the stack
      underlying_array.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      underlying_array.last
    end

    private

    attr_reader :underlying_array
  end


  class Queue
    def initialize
        underlying_array = []
    end

    def enqueue(el)
        underlying_array.push(el)
    end

    def dequeue
        underlying_array.shift
    end

    def peek
        underlying_array.first
    end

    private

    attr_reader :underlying_array
  end

  class Map
    def initialize
        underlying_array = []
    end

    def set(key, value)
        pair_index = underlying_array.index { |pair| pair[0] = key }
        if pair_index
            underlying_array[pair_index][1] = value
        else
            underlying_array.push([key, value])
        end
        value
    end

    def get(key)
        underlying_array.each { |pair| return pair[1] if pair[0] == key } 
    end

    def delete(key)
        underlying_array.reject! { |pair| pair[0] == key }
    end
  end