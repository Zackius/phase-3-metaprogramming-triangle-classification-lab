class Triangle
  attr_accessor :a , :b, :c;

  def initialize(a, b, c )
    @a = a 
    @b = b
    @c = c
  end
  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
    begin 
      raise TriangleError
      rescue TriangleError < StandardError
        puts error.message
      end
  end


class Triangle < StandardError
  def message 
    "Not a triangle "
end

end
end
