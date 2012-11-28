class SortedList
  class Node
    class Null
      def each
      end

      def add(data)
        Node.new data, self
      end

      def remove(data)
        self
      end
    end

    def initialize(data, next_node)
      self.data      = data
      self.next_node = next_node
    end

    def add(data)
      self.next_node = next_node.add data
      self
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

    attr_accessor :data, :next_node
  end
end

class SortedList
  include Enumerable

  def initialize
    self.head = Node::Null.new
  end

  def add(data)
    self.head = head.add data
  end

  def remove(data)
    self.head = head.remove data
  end

  def each(&block)
    head.each &block
  end

  private

  attr_accessor :head
end
