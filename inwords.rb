module InWords
  def in_words(num = self)
    # defino los hashes de nombres
    letras_unidades = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
    letras_once_al_diecinueve = {10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    letras_decenas = {20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
  
    unless num >= 1000
      
      if num < 10
        return letras_unidades[num]
      
      elsif num < 20
        return letras_once_al_diecinueve[num]  
      
      elsif num < 100
        
        if (num%10) != 0
          return letras_decenas[(num/10)*10] + " " + letras_unidades[(num%10)] # [((num/10).floor)*10]
        else
          return letras_decenas[(num/10)*10]
        end
        
      else # si el numero es mayor o igual que cien
        centenas = ((num/100).floor)*100
        decenas = num - centenas
        unidades = (decenas%10)
        
        
        if (decenas/10 == 0) && (unidades ==0) # si son cientos redondos
          return letras_unidades[((num/100).floor)] + " hundred"
          
        elsif decenas/10 == 0  # si decenas es 0
          return letras_unidades[((num/100).floor)] + " hundred " + letras_unidades[(num - ( (num/100).floor )*100)%10]
          
        elsif unidades == 0 # si decenas es 0
          return letras_unidades[((num/100).floor)] + " hundred " + letras_decenas[ ((( (num - ((num/100).floor)*100 ) )/ 10).floor)*10]
        
        elsif (decenas >= 11) && (decenas <=19)
          return letras_unidades[((num/100).floor)] + " hundred " + letras_once_al_diecinueve[decenas] 
       
        else
          return letras_unidades[((num/100).floor)] + " hundred " + letras_decenas[ ((( (num - ((num/100).floor)*100 ) )/ 10).floor)*10] + " " + letras_unidades[(num - ( (num/100).floor )*100)%10]
        end
      end
            
    else 
      puts "Method n/a to numbers greater than 999, sorry man !"
    end # cierro el unless
    
  end # cierro el method in_words
end # cierro el modulo InWords

class Fixnum
  include InWords
end

puts 779.in_words

number = gets.chomp.to_i
puts number, number.class, number.in_words

