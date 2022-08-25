class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1=side1
    @side2=side2
    @side3=side3
  end

  def kind
    if self.side2 <= 0 || self.side1 <= 0 || self.side3 <= 0
      raise TriangleError

    elsif self.side2 == self.side3 && self.side3 == self.side1
      :equilateral
    elsif self.side2 == self.side3 || self.side3 == self.side1 || self.side1 == self.side2
      :isosceles
    elsif self.side1 != self.side3 && self.side3 != self.side1 && self.side1 != self.side2
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Not a valid triangle"
    end

  end

end
# test = Triangle.new(1,1,3)
# puts sample.kind
