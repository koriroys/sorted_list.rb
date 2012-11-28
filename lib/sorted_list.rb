class SortedList
  class Node
    class Null
      def each
      end

      def <<(data)
        Node.new data, self
      end
    end

    def initialize(data, next_node)
      self.data      = data
      self.next_node = next_node
    end

    def <<(data)
      next_node = next_node << data
    end

    def each(&block)
      block.call data
      next_node.each(&block)
    end

    private

    attr_accessor :data, :next_node
  end
end

class SortedList
  include Enumerable

  def initialize
    self.head = Node::Null.new
  end

  def <<(data)
    self.head = head << data
  end

  def each(&block)
    head.each &block
  end

  private

  attr_accessor :head
end
