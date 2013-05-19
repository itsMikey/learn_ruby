class Book
	 attr_accessor :title
	 titleArray = []
	
	def title=(bookName)
		
	smallWord_List = ["of", "a", "the", "and", "an", "or", 
	"nor", "but", "if", "then", "else", "up", 
	 "at", "from", "by", "on", "off", "for", "in", "out", "over", "to"]
	
	titleArray = bookName.split
  
  	titleArray.each { |var| var.capitalize!}

    i = 0
    while (i < titleArray.length) 
  
  	smallWord_List.length.times{ |count|
  	
  	 if ( titleArray[i] == smallWord_List[count].capitalize && i != 0)
  		  titleArray[i].downcase!
     end
  	}
  	
  	i+=1
end
  	@title = titleArray.join(" ")
  
	end
end