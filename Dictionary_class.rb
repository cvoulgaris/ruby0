class Dictionary    
  def initialize 
     @english = Hash.new
  end    

  def add(new_word)
      if new_word.class == Hash
        @english.merge!(new_word)
      else 
        @english.merge!({new_word => nil})
      end
  end

  def entries
      @english
  end

  def keywords
    @english.keys.sort
  end
  
  def list
    @english.each { |key| @english[key] }
  end

  def include?(keyword)
    @english.include?(keyword)
  end

  def find(keyword)
    result_hash = {} #initialize the new hash this method will return
      @english.each_key do |key|
        puts key
        if key.include?(keyword)
          result_hash.merge!(key => @english[key])
        end       
      end
      return result_hash
  end

end

dictionary = Dictionary.new

new_word = {'computer' => 'tecnological tool'}
dictionary.add(new_word)

new_word = {'fish' => 'aquatic animal'}
dictionary.add(new_word)

new_word = {'constantino' => 'el uno de todos'}
dictionary.add(new_word)

#new_word = ["novalue"]
#dictionary.add = new_word

#puts dictionary.entries
#puts dictionary.keywords
#puts dictionary.list
#puts dictionary.include?('pija')
puts dictionary.find("cons")

