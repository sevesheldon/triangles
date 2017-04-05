class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:equilateral?) do
    @side1.eql?(@side2)
    @side2.eql?(@side3)
    @side3.eql?(@side1)
  end

  define_method(:is_a_triangle?) do
    @side1.+(@side2).>(@side3) && @side2.+(@side3).>(@side1) && @side3.+(@side1).>(@side2)
  end

  define_method(:isosceles?) do
    @side1.eql?(@side2) || @side2.eql?(@side3) || @side3.eql?(@side1)
    is_a_triangle?()
  end

  define_method(:scalene?) do
    @side1 != @side2 && @side2 != @side3 && @side3 != @side1
    is_a_triangle?()
  end

end
