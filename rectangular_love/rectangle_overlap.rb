class RectangleOverlap
  attr_reader :rect_1, :rect_2

  def initialize(rect_1, rect_2)
    @rect_1 = rect_1
    @rect_2 = rect_2
  end

# Should be able to refactor to make x and y overlap methods one method
  def x_overlap
    high_start_x  = [@rect_1['x'], @rect_2['x']].max
    low_end_x = [(@rect_1['x'] + @rect_1['width']), (@rect_2['x'] + @rect_2['width'])].min

    if high_start_x >= low_end_x
      { 'x' => nil, 'width' => nil }
    else
      overlap_width = low_end_x - high_start_x
      { 'x' => high_start_x, 'width' => overlap_width }
    end
  end

  def y_overlap
    high_start_y = [@rect_1['y'], @rect_2['y']].max
    low_end_y = [(@rect_1['y'] + @rect_1['height']), (@rect_2['y'] + @rect_2['height'])].min

    if high_start_y >= low_end_y
      { 'y' => nil, 'height' => nil }
    else
      overlap_height = low_end_y - high_start_y
      { 'y' => high_start_y, 'height' => overlap_height }
    end
  end

  def full_overlap
    overlap = y_overlap.merge(x_overlap)
    if overlap.values.any? { |v| v == nil }
      overlap = "There is no overlap"
    end
    overlap
  end
end
