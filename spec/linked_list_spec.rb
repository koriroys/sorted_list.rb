require 'sorted_list'

# Defining contexts by just using a common phrase in the title because
# contexts are all run together at the end and I want to preserve the order

describe SortedList do
  let(:list) { SortedList.new }

  it 'can add data' do
    list.should_not include 1
    list.should_not include 2
    list.add 1
    list.add 2
    list.should include 1
    list.should include 2
  end

  it 'when removing data: does nothing when told to remove data it does not have' do
    list.remove 2
    list.should_not include 2
  end

  it 'when removing data: removes the first occurrence when it has duplicates' do
    list.add 1
    list.add 1
    list.remove 1
    list.should include 1
  end

  it 'when removing data: can remove the first piece of data' do
    list.add 2
    list.remove 2
    list.should_not include 2
  end

  it 'when removing data: can remove the last piece of data' do
    list.add 2
    list.add 1
    list.remove 2
    list.should include 1
    list.should_not include 2
  end

  it 'when removing data: can remove an intermediate piece of data' do
    list.add 3
    list.add 2
    list.add 1
    list.remove 2
    list.should include 1
    list.should_not include 2
    list.should include 3
  end

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
