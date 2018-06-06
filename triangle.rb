# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # checking that the sum of any two sides is greater than the length of the third side
  if (a + b) > c && (a + c) > b && (b + c) > a   
    if a == b && b == c then :equilateral
    elsif a == b || b == c || a == c then :isosceles
    else :scalene
    end
  else 
    raise TriangleError
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
