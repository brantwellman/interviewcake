require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'products'

class ProductsTest < Minitest::Test
  def test_Products_exists
    assert Products
  end

  def test_returns_products_of_other_integers
    products = Products.new
    nums = [1, 2, 3, 4]

    assert_equal [24, 12, 8, 6], products.calculate(nums)
  end

  def test_returns_products_with_array_with_zero
    products = Products.new
    nums = [0, 2, 3, 4]

    assert_equal [24, 0, 0, 0], products.calculate(nums)
  end

end
