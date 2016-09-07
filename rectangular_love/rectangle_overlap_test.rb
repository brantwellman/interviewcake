require_relative 'rectangle_overlap'
require "minitest/autorun"
require 'minitest/pride'
require 'pry'

class RectangleOverlapTest < Minitest::Test

  def test_it_exists
    assert RectangleOverlap
  end

  def test_returns_overlap_x_start_and_width
    rect_1 = { "x" => 1, "y" => 2, 'width' => 3, 'height' => 4}
    rect_2 = { 'x' => 3, 'y' => 4, 'width' => 2, 'height' => 3}
    ro = RectangleOverlap.new(rect_1, rect_2)
    overlap = { "x" => 3, 'width' => 1}

    assert_equal overlap, ro.x_overlap
  end

  def test_returns_overlap_x_start_and_width_as_nils_if_no_overlap
    rect_1 = { "x" => 1, "y" => 2, 'width' => 3, 'height' => 4}
    rect_2 = { 'x' => 4, 'y' => 4, 'width' => 2, 'height' => 3}
    ro = RectangleOverlap.new(rect_1, rect_2)
    overlap = { "x" => nil, 'width' => nil}

    assert_equal overlap, ro.x_overlap
  end

  def test_returns_overlap_y_start_and_height
    rect_1 = { "x" => 1, "y" => 1, 'width' => 3, 'height' => 4}
    rect_2 = { 'x' => 3, 'y' => 4, 'width' => 2, 'height' => 3}
    ro = RectangleOverlap.new(rect_1, rect_2)
    overlap = { "y" => 4, 'height' => 1}

    assert_equal overlap, ro.y_overlap
  end

  def test_returns_overlap_y_start_and_width_as_nils_if_no_overlap
    rect_1 = { "x" => 1, "y" => 1, 'width' => 3, 'height' => 4}
    rect_2 = { 'x' => 4, 'y' => 5, 'width' => 2, 'height' => 3}
    ro = RectangleOverlap.new(rect_1, rect_2)
    overlap = { "y" => nil, 'height' => nil}

    assert_equal overlap, ro.y_overlap
  end

  def test_returns_full_overlap
    rect_1 = { "x" => 1, "y" => 1, 'width' => 3, 'height' => 4}
    rect_2 = { 'x' => 3, 'y' => 4, 'width' => 2, 'height' => 3}
    ro = RectangleOverlap.new(rect_1, rect_2)
    overlap = { "x" => 3, 'y'=> 4, 'width' => 1, 'height' => 1 }

    assert_equal overlap, ro.full_overlap
  end

  def test_returns_nil_values_if_any_values_nil
    rect_1 = { "x" => 1, "y" => 1, 'width' => 3, 'height' => 4}
    rect_2 = { 'x' => 4, 'y' => 4, 'width' => 2, 'height' => 3}
    ro = RectangleOverlap.new(rect_1, rect_2)
    overlap = "There is no overlap"

    assert_equal overlap, ro.full_overlap
  end

  def test_returns_full_overlap_if_both_rects_same
    rect_1 = { "x" => 1, "y" => 1, 'width' => 3, 'height' => 4}
    rect_2 = { 'x' => 1, 'y' => 1, 'width' => 3, 'height' => 4}
    ro = RectangleOverlap.new(rect_1, rect_2)
    overlap = { "x" => 1, 'y'=> 1, 'width' => 3, 'height' => 4 }

    assert_equal overlap, ro.full_overlap
  end
end
