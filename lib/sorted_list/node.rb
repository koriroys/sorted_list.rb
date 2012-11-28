class SortedList
  class Node


    class Null
      def initialize(&comparer)
        self.comparer = comparer
      end

      def each
      end

      def add(data)
        Node.new data, self, &comparer
      end

      def remove(data)
        self
      end

      private

      attr_accessor :comparer
    end


    def initialize(data, next_node, &comparer)
      self.comparer  = comparer
      self.data      = data
      self.next_node = next_node
    end

    def add(data)
      if im_less_than? data
        self.next_node = next_node.add data
        self
      else
        Node.new data, self, &comparer
      end
    end

    def remove(data)
      return next_node if data == self.data
      self.next_node = next_node.remove data
      self
    end

    def each(&block)
      block.call data
      next_node.each(&block)
    end

    protected

    attr_accessor :data, :next_node, :comparer

    def im_less_than?(data)
      comparer.call(self.data, data) <= 0
    end
  end
end
