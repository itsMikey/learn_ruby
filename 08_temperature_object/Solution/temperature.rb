class Temperature

	def initialize (options = {})
    @fahDegrees = options[:f] || options[:c] * (9.0/5.0) + 32
   
   end

  def in_fahrenheit
    
    return @fahDegrees
 end

  def in_celsius
    
    return (@fahDegrees - 32) * (5.0/9.0)
   end

   def self.from_celsius (celDegrees)
  
    new(:c => celDegrees)
  end

  def self.from_fahrenheit (fahDegrees)
    
    new(:f => fahDegrees)
  end

  def ftoc(fah)
   
    return (fah - 32) * (5.0/9.0)
  end

	def ctof(cel)
    
    return cel * (9.0/5.0) + 32
  
  end
end

  class Celsius < Temperature
 
  def initialize(cel)
   
    super(:c => cel)
   end
end
 
 class Fahrenheit < Temperature
  
  def initialize(fah)
   
   	super(:f => fah)
  end
end
 





