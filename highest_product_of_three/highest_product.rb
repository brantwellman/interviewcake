require 'pry'

class HighestProduct

  def calculate(numbers)
    # sort array
    sorted = numbers.sort
    # find product of last 3 integers

    sorted[-1] * sorted[-2] * sorted[-3]
  end
end
