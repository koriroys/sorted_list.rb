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
end
