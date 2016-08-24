class Products

  def calculate(number_array)
    number_array.each_with_index.map do |num, index|
      sub_array = number_array.reject { |num| number_array.index(num) == index }
      sub_array.inject(1) { |result, num| result * num }
    end
  end

end
