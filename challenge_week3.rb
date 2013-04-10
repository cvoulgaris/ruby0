class Square
  include Math
  attr_accessor :color, :side

  def initialize (side, color=:red)
  	@color = color
  	@side = side
  end

  def area
  	@area = @side * @side
  end

  def can_fit(value)
	return self.area/value.area
  end

  def can_fit?(value)
	self.area/value.area >= 1 ? true : false
  end
end

class Circle < Square
  attr_accessor :color, :radius

  def initialize (radius, color=:red)
  	@color = color
  	@radius = radius
  end

  def area
  	@area = 2*@radius*Math::PI
  end
end

class Rectangle < Square
  attr_accessor :color, :width, :height

  def initialize (width, height, color=:red)
  	@color = color
  	@width = width
  	@height = height
  end

  def area
  	@area = @width * @height
  end
end

sq = Square.new(2)
puts "The square color is #{sq.color}, the side is #{sq.side}, and the area is #{sq.area}"


cr = Circle.new(2,:violet)
puts "The circle color is #{cr.color}, the radius is #{cr.radius}, and the area is #{cr.area}"

rt = Rectangle.new(3,4,:yellow)
puts "The rectangle color is #{rt.color}, the length is #{rt.width}, the height is #{rt.height}, and the area is #{rt.area} "

puts rt.can_fit(sq)
puts rt.can_fit?(sq)