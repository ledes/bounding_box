require_relative '../lib/bounding_box'

class BoundingArea
  attr_reader :boxes

  def initialize( boxes =[])
    @boxes = boxes
  end
  #
  # def boxes_contain_point?(x, y)
  #   flag = false
  #   @boxes.each do |box|
  #     if  box.contains_point?(x, y)
  #       flag = true
  #     end
  #   end
  #   flag
  # end

  def boxes_contain_point?(x, y)
    boxes.any?{|box| box.contains_point?(x,y)}
  end

end
