class Book
    
   def title=(titulo)
     titulo = titulo.split(" ") #split title into words 
     (0..(titulo.count - 1) ).each do |x| #go through the array of words
     word = titulo[x]
         if x == 0 # always capitalize the first word 
            titulo[x] == word.capitalize!
         else # for the rest of the words, never capitalize these ones
            if word == "the" or word == "a"or word == "an" or word =='and' or word == "in"
              nil
            else  # capitalize all the rest
              titulo[x] == word.capitalize!
            end
         end
     end
     @title = titulo.join(" ").to_s
   end  
  
   def title
     @title
   end
end 

book1 = Book.new
book2 = Book.new

book1.title = "a mind forever voyaging"
book2.title = "i robot"
puts book1.title, book2.title
