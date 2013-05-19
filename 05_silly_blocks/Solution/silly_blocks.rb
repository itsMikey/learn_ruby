def reverser (&results) 

 	 holdResult = results.call.split
 	
 	 holdResult.each{ |data|
 	
 	   data.reverse!
  }
 	
 	return holdResult.join(" ")
 	
end

def adder(val=1) 
	
	return yield + val
end


def repeater(val = -1)
	p val
	if(val == -1)
		return yield
	end	
	
	else
	  val.times { 
	 
	 	yield
	 }

end