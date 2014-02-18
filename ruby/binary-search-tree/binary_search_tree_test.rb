require 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative 'bst'

class BstTest < MiniTest::Unit::TestCase
  def test_data_is_retained
    assert_equal 4, Bst.new(4).data
  end

  def test_inserting_less
    four = Bst.new 4
    four.insert 2
    assert_equal 4, four.data
    assert_equal 2, four.left.data
  end

  def test_inserting_same
    four = Bst.new 4
    four.insert 4
    assert_equal 4, four.data
    assert_equal 4, four.left.data
  end

  def test_inserting_right
    four = Bst.new 4
    four.insert 5
    assert_equal 4, four.data
    assert_equal 5, four.right.data
  end

  def test_inserting_multiple_right_nodes
    four = Bst.new 4
    four.insert 5
    four.insert 6
    assert_equal 4, four.data
    assert_equal 5, four.right.data
    assert_equal 6, four.right.right.data
  end

  def test_inserting_multiple_left_nodes
    four = Bst.new 4
    four.insert 5
    four.insert 3
    assert_equal 4, four.data
    assert_equal 3, four.left.data
    assert_equal 5, four.right.data
  end

  def test_inserting_multiple_right_nodes
    four = Bst.new 4
    four.insert 3
    four.insert 1
    assert_equal 4, four.data
    assert_equal 3, four.left.data
    assert_equal 1, four.left.left.data
  end

  def test_complex_tree
    four = Bst.new 4
    four.insert 2
    four.insert 6
    four.insert 1
    four.insert 3
    four.insert 7
    four.insert 5
    assert_equal 4, four.data
    assert_equal 2, four.left.data
    assert_equal 1, four.left.left.data
    assert_equal 3, four.left.right.data
    assert_equal 6, four.right.data
    assert_equal 5, four.right.left.data
    assert_equal 7, four.right.right.data
  end

  def test_it_sorts_a_single_node
    tree = Bst.new(10)
    assert_equal [10], tree.all
  end

  def test_it_sorts_a_left_node
    tree = Bst.new(10)
    tree.insert(9)
    assert_equal [9, 10], tree.all
  end

  def test_it_sorts_a_right_node
    tree = Bst.new(10)
    tree.insert(11)
    assert_equal [10, 11], tree.all
  end

  def test_it_sorts_multiple_nodes_either_direction
    tree = Bst.new(10)
    tree.insert(50)
    tree.insert(24)
    tree.insert(5)
    tree.insert(3)
    tree.insert(1)
    assert_equal [1, 3, 5, 10, 24, 50], tree.all
  end

  def record_all_data(bst)
    all_data = []
    bst.each { |data| all_data << data }
    all_data
  end

  def test_iterating_one_element
    assert_equal [4], record_all_data(Bst.new 4)
  end

  def test_iterating_over_smaller_element
    four = Bst.new 4
    four.insert 2
    assert_equal [2, 4], record_all_data(four)
  end

  def test_iterating_over_larger_element
    four = Bst.new 4
    four.insert 5
    assert_equal [4, 5], record_all_data(four)
  end

  def test_iterating_over_complex_tree
    four = Bst.new 4
    four.insert 2
    four.insert 1
    four.insert 3
    four.insert 6
    four.insert 7
    four.insert 5
    assert_equal [1, 2, 3, 4, 5, 6, 7], record_all_data(four)
  end
end
