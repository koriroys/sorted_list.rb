class SortedList
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
    @nodes.delete(node)
  end
end
