class Tree
  attr_accessor :children, :name

  def initialize(hash)
    @name = hash.keys.first
    @children = []
    hash[@name].each {|n,c| @children << Tree.new(n => c)}
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all(&block)}
  end

  def visit(&block)
    block.call self
  end
end

tree = Tree.new(:grandpa => {:dad => {'child 1' => {},'child 2' => {}}, 'uncle' => {'child 3' => {},'child 4' => {}}})
tree.visit_all { |n| puts n.name}


# some test
hash_one = {'grandpa' => {'dad' => {'child 1' => {},'child 2' => {}}, 'uncle' => {'child 3' => {},'child 4' => {}}}}
puts hash_one
puts hash_one.keys

hash_two = {:grandpa => {:dad => {:child1 => {}, :child2 => {}}, :uncle => {:child3 => {},:child4 => {}}}}
puts hash_two
puts hash_two.keys.class
