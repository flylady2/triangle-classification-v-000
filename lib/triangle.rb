class Triangle
  attr_accessor :side_a, :side_b, :side_c, :type

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if side_a + side_b > side_c || side_b + side_c > side_a || side_c + side_a > side_b
      @type
    else
      raise TriangleError
    end
  end
  # write code here
end

  class TriangleError < StandardError
