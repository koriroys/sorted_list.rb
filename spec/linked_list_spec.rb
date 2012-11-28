require 'sorted_list'

# Defining contexts by just using a common phrase in the title because
# contexts are all run together at the end and I want to preserve the order

describe SortedList do
  it 'can add data'

  it 'when removing data: does nothing when told to remove data it does not have'
  it 'when removing data: removes the first occurrence when it has duplicates'
  it 'when removing data: can remove the first piece of data'
  it 'when removing data: can remove the last piece of data'
  it 'when removing data: can remove an intermediate piece of data'

  it 'enumerable methods: iterates over nothing when has no data'
  it 'enumerable methods: defines #each'
  it 'enumerable methods: can do any of the enumerable methods'

  it 'stores the data in a list of nodes linked to each other'

  it 'stores the data sorted by <=> when not initialized with a block'
  it 'stores the data sorted by the block when initialized with a block'

  it 'can store multiples of the same data'
  it 'knows its size'
  it 'inspects to List(datum, datum, datum)'
  it 'List(datum, datum, datum) constructs a list of the data'
end
