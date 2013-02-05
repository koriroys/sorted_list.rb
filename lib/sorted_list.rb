class SortedList
  include Enumerable

  def initialize
    @nodes = []
  end

  def add(node)
    @nodes << node
    self
  end

  def include?(node)
    @nodes.include?(node)
  end

  def remove(node)
    index = @nodes.index(node)
    @nodes.delete_at(index) unless index.nil?
  end

  def each &block
    return if @nodes.empty?
    @nodes.each &block
  end
end
