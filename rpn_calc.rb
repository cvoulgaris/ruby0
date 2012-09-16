class RPNCalculator

  def initialize()
    @stack = []
  end

  def push(new_word)
    @stack.insert(0,new_word)
    #puts @stack.inspect
  end

  def plus
    unless @stack.count < 1
      temp = @stack[1] + @stack[0]
      flush
      @stack.insert(0,temp)
    else
      puts "You don't have enough values for that operation"
      nil
    end 
  end
  
  def minus
    unless @stack.count < 1
      temp = @stack[1] - @stack[0]
      flush
      @stack.insert(0,temp)
    else
      puts "You don't have enough values for that operation"
      nil
    end
  end
  
  def times
    unless @stack.count < 1
      temp = @stack[1] * @stack[0]
      flush
      @stack.insert(0,temp)
    else
      puts "You don't have enough values for that operation"
      nil
    end
  end
  
  def divide
    unless @stack.count < 1
      temp = @stack[1].to_f / @stack[0].to_f
      flush
      @stack.insert(0,temp)
    else
      puts "You don't have enough values for that operation"
      nil
    end
  end
  
  def flush
    @stack.reverse!.pop(2)
    @stack.reverse!
  end
  
  def inspect
    @stack.inspect
  end
  
  def value
    return @stack[0]
  end

end


my_calc = RPNCalculator.new
my_calc.push(1)
my_calc.push(3)
my_calc.push(5)
my_calc.times
print my_calc.value, " ", my_calc.inspect, "\n"
puts
my_calc.push(2)
my_calc.push(4)
my_calc.divide
print my_calc.value, " ", my_calc.inspect, "\n"

