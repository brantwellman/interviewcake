class RectangleOverlap
  attr_reader :rect_1, :rect_2

  def initialize(rect_1, rect_2)
    @rect_1 = rect_1
    @rect_2 = rect_2
  end

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
end
