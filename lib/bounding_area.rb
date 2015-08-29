require_relative '../lib/bounding_box'

class BoundingArea

  def initialize( boxes =[])
    @boxes = boxes
  end

  def boxes_contain_point?(x, y)
    flag = 0
    @boxes.each do |box|
      if  box.contains_point?(x, y)
        flag += 1
      end
    end
    flag > 0
  end
  
end
