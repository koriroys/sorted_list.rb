require 'awesome_print'

class SortedList
  include Enumerable

  def initialize(&block)
    @nodes = []
    @block = block
  end

  def node_data
    @nodes.map(&:data)
  end

  def add(data)
    if @nodes.empty?
      @nodes << Node.new(data)
    else
      parent_node = @nodes.last
      next_node = Node.new(data)
      @nodes << next_node
      parent_node.next_node = next_node
    end
    relink_nodes
    self
  end

  def size
    @nodes.size
  end

  def inspect
    "#{self.class}(#{inspect_list})"
  end

  def inspect_list
    node_data.map{ |datum| datum.inspect }.join(", ")
  end

  def relink_nodes
    @nodes.sort! &@block
  end

  def include?(data)
    node_data.any?{ |datum| datum == data }
  end

  def remove(node)
    index = node_data.index(node)
    @nodes.delete_at(index) unless index.nil?
  end

  def each &block
    return if @nodes.empty?
    node_data.each &block
  end

  def head
    @nodes.first
  end

  def to_a
    node_data
  end
end

def SortedList(*args, &block)
  args.each.with_object(SortedList.new(&block)) do |node, list|
    list.add(node)
  end
end

class Node
  include Comparable

  attr_accessor :next_node

  def initialize(data)
    @data = data
  end

  def data
    @data
  end

  def <=>(other)
    data <=> other.data
  end
end
