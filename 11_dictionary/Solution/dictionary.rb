class Dictionary

	def entries(wordHash = {})
	
	@entries ||= wordHash
  end

	def add(dictVal)
	
		if(dictVal.is_a? Hash)
		 entries.merge!(dictVal)
		end
	
		if (dictVal.is_a? String)
			entries[dictVal] = nil
		end
	end

	 def keywords
    	@entries.keys.sort
 	 end
 	 
 	 def include? val
		 entries.has_key?(val)
     end

	def find wordPart
	 matches = {}
	if (entries != nil )
		entries.select {|key, value| 
		if (key.include?(wordPart))
			matches[key] = value
		end
		}
	end
		return matches
	end

	def printable
	
	String stringArray = ""
		entries.sort.each { |key, values|
		
		stringArray += "[#{key}] \"#{values}\"\n"
	}
	return stringArray[0..stringArray.length-2]
	
	end
end