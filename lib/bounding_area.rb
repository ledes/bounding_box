require_relative '../lib/bounding_box'

class BoundingArea

  def initialize( boxes =[])
    @boxes = boxes
  end

  def boxes_contain_point?(x, y)
    flag = false
    @boxes.each do |box|
      if  box.contains_point?(x, y)
        flag = true
      end
    end
    flag
  end

end
