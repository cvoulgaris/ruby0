class RPNCalculator

  def initialize()
    @stack = []
  end

  def push(new_word)
    @stack << new_word
    puts @stack.inspect
  end

  def plus
    unless @stack.count < 1
      temp = @stack[1] + @stack[0]
      @stack.insert(0,temp)
      puts @stack.inspect
    else
      puts "You don't have enough values for that operation"
      nil
    end 
  end
  
  def minus
    unless @stack.count < 1
      temp = @stack[0] + @stack[1]
      @stack.insert(0,temp)
      puts @stack.inspect
    else
      puts "You don't have enough values for that operation"
      nil
    end
  end
  
  def times
    nil
  end
  
  def divide
    nil
  end
  
  def value
    return @stack[0]
  end

end


my_calc = RPNCalculator.new
my_calc.push(3)
my_calc.push(5)
my_calc.plus
puts my_calc.value