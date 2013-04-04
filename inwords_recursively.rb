module InWords
  def in_words
    # defino los hashes de nombres
    letras_unidades = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
    letras_once_al_diecinueve = {10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    letras_decenas = {20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    
    # defino variables para que sea mas comodo no meter tantos ceros en calculos grandes
    diez = 10
    cien = 100
    mil = 1000
    millon = mil*mil
    billon = millon*mil
    trillon = billon*mil
    cuatrillon = trillon*mil
  
      if self < 10
        return letras_unidades[self]
      
      elsif self < 20
        return letras_once_al_diecinueve[self]  
      
      elsif self < 100 
        decenas = self/10 # el digito de las decenas
        self_sacando_decenas = self - decenas*diez
        if self%diez == 0
          return letras_decenas[self]
        else
          return letras_decenas[decenas*diez] + " " + self_sacando_decenas.in_words
        end

      elsif self < 1000 # si mayor o igual que cien y menos que mil
        centenas = self/100 # el digito de las centenas
        self_sacando_centenas = self - centenas*cien
        if self%cien == 0
          return centenas.in_words + " hundred"
        else
          return centenas.in_words + " hundred " + self_sacando_centenas.in_words
        end

      elsif self < millon #para numeros menores a 1,000,000 (un millon)
        miles = self/mil # el digito de los miles
        self_sacando_miles = self - miles*mil
        if self%mil == 0
          return miles.in_words + " thousand"
        else
          return miles.in_words + " thousand " + self_sacando_miles.in_words
        end


      elsif self < billon # para numeros de menos de 1,000,000,000 (un billon)
        millones = self/millon # el digito de los millones
        self_sacando_millones = self - millones*millon
        if self%millon == 0
          return millones.in_words + " million"
        else
          return millones.in_words + " million " + self_sacando_millones.in_words
        end

      elsif self < trillon # para numeros menores a 1,000,000,000,000 (un trillon)
        billones = self/billon # el digito de los trillones
        self_sacando_billones = self - billones*billon
        if self%billon == 0
          return billones.in_words + " billion"
        else
          return billones.in_words + " billion " + self_sacando_billones.in_words
        end

      elsif self < cuatrillon # par anumeros menores a 1,000,000,000,000,000 (un cuatrillon)
        trillones = self/trillon # el digito de los trillones
        self_sacando_trillones = self - trillones*trillon
        if self%trillon == 0
          return trillones.in_words + " trillion"
        else
          return trillones.in_words + " trillion " + self_sacando_trillones.in_words
        end

      else    
        return "Method n/a to numbers equal or greater than 1 quatrillion.\nSorry, not even Bloc.io founders after their IPO will get that money !"
      end 
    
  end # end of the in_words method

end # end of the InWords Module

class Integer
  include InWords
end

puts 779.in_words

number = gets.to_i
puts number, number.class, number.in_words

