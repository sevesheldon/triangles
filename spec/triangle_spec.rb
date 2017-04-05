require('rspec')
require('triangle')

describe(Triangle) do

  describe("#equilateral?") do

    it("returns false if it is not an equilateral triangle") do
      test_triangle = Triangle.new(2, 3, 3)
      expect(test_triangle.equilateral?()).to(eq(false))
    end

    it("returns true if it is an equilateral triangle") do
      test_triangle = Triangle.new(3, 3, 3)
      expect(test_triangle.equilateral?()).to(eq(true))
    end

  end

  describe("#is_a_triangle?") do

    it("returns false if the the sum of the lengths of any two sides is less than or equal to the length of the third side") do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.is_a_triangle?()).to(eq(false))
    end

    it("returns true if the the sum of the lengths of any two sides is greater than the length of the third side") do
      test_triangle = Triangle.new(5, 5, 8)
      expect(test_triangle.is_a_triangle?()).to(eq(true))
    end

  end

  describe("#isosceles?") do

    it("returns false if exactly two sides are equal but #is_a_triangle? returns false") do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.isosceles?()).to(eq(false))
    end

    it("returns true if exactly two sides are equal and #is_a_triangle? returns true") do
      test_triangle = Triangle.new(15, 15, 20)
      expect(test_triangle.isosceles?()).to(eq(true))
    end

  end

  describe("#scalene?") do

    it("returns false if no sides are equal but #is_a_triangle? returns false") do
      test_triangle = Triangle.new(1, 4, 30)
      expect(test_triangle.scalene?()).to(eq(false))
    end

    it("returns true is no sides are equal and #is_a_triangle? returns true") do
      test_triangle = Triangle.new(5, 6, 7)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end

end
