# gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'stocks'
require 'minitest/pride'
require 'pry'


class StocksTest < Minitest::Test

  def test_Stocks_exists
    assert Stocks
  end

  def test_Stocks_initialized_with_prices_array
    stocks = Stocks.new([1, 2, 3,])

    assert_equal [1, 2, 3], stocks.stock_prices_yesterday
  end

  def test_find_max_profit
    stocks = Stocks.new([10, 7, 5, 8, 11, 9])

    assert_equal 6, stocks.get_max_profit
  end
end
