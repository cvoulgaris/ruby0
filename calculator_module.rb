module Calculator
  def add(num)
    self + num
  end

  def subtract(num)
    self - num
  end

  def multiply(num)
    self*num
  end

  def divide(num)
    if self % num == 0
      self / num
    else
      self.to_f / num
    end
  end
end

class Numeric
  include Calculator
end

puts 8.0.divide(4.0)

