require 'minitest'
require 'minitest/autorun'
require './lib/binary_tree_node'

class BinaryTreeNodeTest < Minitest::Test

  def setup
    @node5 = BinaryTreeNode.new(5)
    node3 = @node5.insert_left(3)
    node1 = node3.insert_left(1)
    node4 = node3.insert_right(4)
    node8 = @node5.insert_right(8)
    node12 = node8.insert_right(12)
    node7 = node8.insert_left(7)
    node10 = node12.insert_left(10)
    node9 = node10.insert_left(9)
    node11 = node10.insert_right(11)
  end

  def test_it_exitst
    assert BinaryTreeNode.new(3)
  end

  def test_it_returns_largest_value
    assert_equal 12, @node5.largest_value
  end

  def test_it_returns_largest_value_from_balanced_tree
    node5 = BinaryTreeNode.new(5)
    node3 = node5.insert_left(3)
    node1 = node3.insert_left(1)
    node4 = node3.insert_right(4)
    node8 = node5.insert_right(8)
    node7 = node8.insert_left(7)
    node9 = node8.insert_right(9)

    assert_equal 9, node5.largest_value
  end

  def test_returns_second_largest_value
    assert_equal 11, @node5.second_largest_value
  end

  def test_returns_second_largest_value_in_balanced_tree
    node5 = BinaryTreeNode.new(5)
    node3 = node5.insert_left(3)
    node1 = node3.insert_left(1)
    node4 = node3.insert_right(4)
    node8 = node5.insert_right(8)
    node7 = node8.insert_left(7)
    node9 = node8.insert_right(9)

    assert_equal 8, node5.second_largest_value
  end
end
