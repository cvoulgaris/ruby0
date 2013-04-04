class Triangle
  def initialize(array_with_sides)
    if array_with_sides.length != 3
      puts "a TRIanngle man... 3 sides, come on !..."
      return "Error, you need 3 data points"
    end
  @side1 = array_with_sides[0]
  @side2 = array_with_sides[1]
  @side3 = array_with_sides[2]
  end

  def perimeter
  	perimeter = @side1 + @side2 + @side3
  end 
end

class Rectangle
  def initialize(side,length)
	@side = side
	@length = length
  end

  def area
  	@side * @length
  end
 end


triag_vals = [3,3,3]
my_triag = Triangle.new(triag_vals)
puts my_triag.perimeter

my_rect = Rectangle.new(5,4)
puts my_rect.area