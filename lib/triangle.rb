class Triangle
  attr_accessor :side_a, :side_b, :side_c, :equilateral, :isosceles, :scalene

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if side_a == side_b && side_b == side_c
      :equilateral
    elsif side_a == side_b || side_b == side_c || side_c == side_a
      :isosceles
    elsif side_a != side_b && side_b != side_c && side_c != side_a
      :scalene
    else
      raise TriangleError
    end
  end
  # write code here
end

  class TriangleError < StandardError
  end
