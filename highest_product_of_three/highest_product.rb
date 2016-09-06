require 'pry'

class HighestProduct

  def calculate(numbers)
    sorted = numbers.sort

    abs_values = []
    abs_values = sorted.map do |int|
      int.abs
    end

    if abs_values[0] > abs_values[-2] && abs_values[1] > abs_values[-2]
      sorted[0] * sorted[1] * sorted[-1]
    else
      sorted[-1] * sorted[-2] * sorted[-3]
    end
  end
end
