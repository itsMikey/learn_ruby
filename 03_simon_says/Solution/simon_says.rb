 def echo(x)

	return x
 end


 def shout(x)
  
	return x.upcase
end

  
  def repeat(x,  r= 2)

	return ("#{x } " * r).strip
 end

 
 def start_of_word(x,  y)

 	return x[0, y]
end
 
  
  def first_word(wholeWord)
 
 	y = wholeWord.split

 	return y[0]
 end
  
  
  def titleize(original_Title)
  
	smallWord_List = ["of", "a", "the", "and", "an", "or", 
	"nor", "but", "if", "then", "else", "when", "up", 
	 "at", "from", "by", "on", "off", "for", "in", "out", "over", "to"]
	
	newTitle = original_Title.split
  	newTitle.each { |var| var.capitalize!}
  	
    i = 0
    while (i < newTitle.length) 
  
  	smallWord_List.length.times{ |count|
  	
  	 if (newTitle[i] == smallWord_List[count].capitalize && i != 0)
  		 newTitle[i].downcase!
     end
  	}
  	
  	i+=1
end
  	return newTitle.join(" ")
  
end
  
  
  
  
  
  
  
  