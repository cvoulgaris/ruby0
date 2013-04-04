class Array
  def new_count
  	counter = 0
  	0.upto(self.length-1) do |index|
  		if yield(self[index]) == true
  		 	counter += 1
  		else
  			nil
  		end
  	end
  	return counter  		
  end
end

a = [1,2,3,4,2,3]
puts a.new_count { |i| i == 2}