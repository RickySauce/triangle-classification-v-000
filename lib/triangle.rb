require 'pry'

class Triangle
  attr_reader :side_1, :side_2, :side_3, :all_sides

  def initialize(side_1, side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @all_sides = [@side_1, @side_2, @side_3]
  end

  def kind
    all_sides = self.all_sides.sort
   if self.all_sides.any? {|side| side < 1.0 } || all_sides[0] + all_sides[1] <= all_sides[2]
    raise TriangleError
    end
  end

class TriangleError < StandardError
end

end
