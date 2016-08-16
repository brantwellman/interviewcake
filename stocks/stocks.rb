class Stocks
  attr_reader :stock_prices_yesterday

  def initialize(stock_prices)
    @stock_prices_yesterday = stock_prices
  end

  def get_max_profit
    max_profit = 0
    max_profits = []
    stock_prices_yesterday.each_with_index do |price, index|
      selling_prices = stock_prices_yesterday[index + 1..-1]
      if index == stock_prices_yesterday.size - 1
        next
      end
      max_price = selling_prices.max
      potential_max_profit = max_price - price
      max_profits.push(potential_max_profit)
    end
    max_profits.max
  end
end
