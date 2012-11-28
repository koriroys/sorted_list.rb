Spec for a sorted linked list
=============================

This is a spec for a sorted linked list.

It expects a base class called SortedList. It will expect a method `head`
to the first node in the list, though this method can be private.

It expects each node to have a method `next_node` to the next node in the list.

Solution is in branch [solved](https://github.com/JoshCheek/sorted_list.rb/tree/solved).

Purpose
-------

To provide a fun but nontrivial problem to solve. To play with the idea of
storing blocks for later use.

Examples
--------

Sorted forwards:

```ruby
list = SortedList.new do |left, right|
  left <=> right
end

list << 3 << 1 << 2
list.to_a # => [3, 2, 1]
```

Sorted backwards:
```ruby
list = SortedList.new do |left, right|
  right <=> left
end

list << 'c' << 'a' << 'b'
list.to_a # => ["c", "b", "a"]
```

Usage:
------

* Install dependencies (rspec) with `$ bundle`
* Run specs with `$ rake`
* When developing, run specs until first failure with `$ rake spec:dev`
