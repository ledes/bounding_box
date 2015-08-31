require 'pry'

class BoundingBox
  attr_reader :width, :height

  def initialize(x, y, width, height)
    @x = x.to_f
    @y = y.to_f
    @width = width.to_f
    @height = height.to_f
  end

  def left
    @x
  end

  def right
    @x + @width
  end

  def top
    @y + @height
  end

  def bottom
    @y
  end

  def contains_point?(a, b)
    (@x..(@x +@width)).include?(a) && (@y..(@y +@height)).include?(b)
    # x.between?(left, right) && y.between?(bottom, top)
  end

end
