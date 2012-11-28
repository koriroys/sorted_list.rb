require 'sorted_list/node'

def SortedList(*data, &comparer)
  list = SortedList.new &comparer
  data.reduce list, :add
end

class SortedList
  include Enumerable

  def initialize(&comparer)
    self.comparer = comparer || default_comparer
    self.head = Node::Null.new &self.comparer
  end

  def add(data)
    self.head = head.add data
    self
  end

  def remove(data)
    self.head = head.remove data
  end

  def each(&block)
    head.each &block
  end

  def size
    inject(0) { |sum, _| sum + 1 }
  end

  def inspect
    "SortedList(#{map(&:inspect).join ', '})"
  end

  protected

  def default_comparer
    lambda { |left, right| left <=> right }
  end

  attr_accessor :head, :comparer
end
