class Integer
  def fibonacci
     if self < 2 
        self
     else
        self.downto(2) do |i|
        fbnc = (i-1).fibonacci + (i-2).fibonacci
        return fbnc
        end
     end      
  end
end

puts 10.fibonacci