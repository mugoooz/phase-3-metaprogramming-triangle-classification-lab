class Triangle
  def initialize(l1,l2,l3)
    @side1 = l1
    @side2 = l2
    @side3 = l3
  end

  def kind
    if @side1 == side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else
      :scalene
    end
    
  end

  private
  def 



end
