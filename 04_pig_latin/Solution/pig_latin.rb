def translate(orig_Word)
	
	word = orig_Word.split('')

	String tfArray = []
	vowel_List = ["a", "e", "i", "o", "u"]
	String consonant_List = ["b", "c", "d", "f", "g", "h", "j", "k",
					  "l", "m", "n", "p", "q", "r", "s", "t",  #q is 12 u is 4
					  "v", "w", "x", "y", "z"]

  	vowel_List.length.times{ |count|
  	
  	 if (word[0].chr == vowel_List[count])
  		 word << "ay"
      	return word.join
     end
  	}

  	word.length.times{|count|
        if(word[count] == "q" && [word[0]].all?{|val| consonant_List.include?(val) && val != "q"})

          return word[count+2..word.length].join + word[count-1..count+1].join + "ay"
        
        elsif(word[count] == "q")
       
          return word[count+2..word.length].join + word[count..count+1].join + "ay"
        end
      } 

    	if [word[0], word[1], word[2]].all?{|val| consonant_List.include?(val) } 
  	
    return word[3..word.length].join + word[0..2].join + "ay"
  

  	elsif [word[0], word[1]].all?{|val| consonant_List.include?(val) }
       return word[2..word.length].join + word[0..1].join + "ay"
  		
  	elsif [word[0]].any?{|val| consonant_List.include?(val)}
  		
      return word[1..word.length].join + word[0] + "ay"

  	end


end
