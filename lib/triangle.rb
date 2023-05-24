class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    validate_triangle

    if @side1 == @side2 && @side2 == @side3
      :equilateral
    
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles

    else
      :scalene
    end
  end

  private

  def validate_triangle
    sides = [@side1, @side2, @side3]

    raise TriangleError, "All sides must be larger than 0" if sides.any? { |side| side <= 0 }
    raise TriangleError, "Invalid triangle: the sum of any two sides must exceed the length of the third side" unless triangle_inequality?
  
  end

  def triangle_inequality?
    @side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side1 + @side3 > @side2
  end

  class TriangleError < StandardError
  end
end
