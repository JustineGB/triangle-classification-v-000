class Triangle
  attr_accessor :a, :b, :c #read and write side lenght 

  def initialize(a, b, c) #take in the 3 side lenghts 
    @a = a
    @b = b
    @c = c
  end

  def valid_triangle? #first need to determine if the triangle is valid or not (and then complete the KIND method..helper method here. i think it owuld be pretty comlpicated to try to include this into the other mehtod)
    if a && b && c > 0.0 && a + b > c && a + c > b && b + c > a #A and B and C are all over 0.0 (need .0 bc 0.4 passed in as side lenght in specs)
    #whenever 2 sides are added, they are ALWAYS greater than the 3rd side. 
      return true #true, it is a valid triangle 
    else
      return false #false, it is not a valid triangle and riase the triangle error
      raise TriangleError
    end
  end

  def kind #determine what kind of triangle each ISNTANCE of triangle is
   if valid_triangle? #first call on my helper method valid_triangle? if true, complete code, if false - riase triangle error 
    return :equilateral if a == b && a == c && b == c #all sides are perfectly equal 
    return :isosceles if a == b || b == c || a == c #exactly 2 sides are equal 
    return :scalene #all other valid triangles (no sides equal)
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError #Triangle Error (specific error method)
    def message 
    "This is not a triangle!!!!"
    end
  end
end
