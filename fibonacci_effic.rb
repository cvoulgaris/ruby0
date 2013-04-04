class Integer
  def fibonacci
     fibonacci_array = []
          (0..self+1).each do |i| # rmemeber it starts with 0, so I need to go one step more ,hence the +1
               if i == 0
                    fibonacci_array << i
               elsif i == 1
                    fibonacci_array << i
               else
                    fibonacci_array << fibonacci_array[i-1] + fibonacci_array[i-2]
               end                         
          end     
      return fibonacci_array[self]
  end
end

puts 100.fibonacci