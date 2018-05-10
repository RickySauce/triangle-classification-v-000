require 'pry'

class Triangle
  attr_reader :side_1, :side_2, :side_3, :all_sides

  def initialize(side_1:, side_2:, side_3:)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @all_sides = [@side_1, @side_2, @side_3]
    binding.pry
  end

  def kind
  end
end

class TriangleError < StandardError
end
