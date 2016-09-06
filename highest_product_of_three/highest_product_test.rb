require_relative 'highest_product'
require 'minitest/autorun'
require 'minitest/pride'

class HighestProductTest < Minitest::Test

  def setup
    @hp = HighestProduct.new
  end

  def test_HighestProduct_exits
    assert HighestProduct
  end

  def test_returns_highest_product
    integers = [1, 4, 3, 2]

    assert_equal 24, @hp.calculate(integers)
  end

  def test_returns_highest_product_from_presorted_array
    integers = [1, 2, 3, 4]

    assert_equal 24, @hp.calculate(integers)
  end

  def test_returns_highest_product_from_long_array
    integers = [2, 56, 88, 24, 2, 1, 8]

    assert_equal 118272, @hp.calculate(integers)
  end

  def test_returns_highest_product_from_array_length_3
    integers = [88, 24, 56]

    assert_equal 118272, @hp.calculate(integers)
  end

  def test_returns_highest_product_with_negative_numbers
    integers = [2, 56, -88, 24, 2, 1, 8]

    assert_equal 10752, @hp.calculate(integers)
  end

  def test_returns_highest_product_with_two_negative_numbers_involved
    integers = [-10, -10, 1, 3, 2]

    assert_equal 300, @hp.calculate(integers)
  end

  def test_returns_highest_product_with_one_negative_number_involved
    integers = [-10, 10, 1, 3, 2]

    assert_equal 60, @hp.calculate(integers)
  end
end
