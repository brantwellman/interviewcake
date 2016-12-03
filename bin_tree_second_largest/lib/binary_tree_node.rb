class BinaryTreeNode
  attr_accessor :left, :right
  attr_reader :value

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
  end

  def largest_value
    if @right
      @right.largest_value
    else
      value
    end
  end

  def second_largest_value
    if !@right && @left
      return @left.largest_value
    end
    if @right && !@right.right && !@right.left
      return value
    end
    return @right.second_largest_value
  end

end
