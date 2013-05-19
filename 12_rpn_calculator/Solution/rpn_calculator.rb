class RPNCalculator
	attr_accessor :calcStack
	
	def initialize

		@calcStack = []

	end

	def push(item)

		calcStack.push(item.to_f)
	end
	
	
	def pop
		value = calcStack.pop
		
		if value == nil
			raise "calculator is empty"
		end

		return value
	end
	
	
	def plus
		
		return calcStack.push(pop + pop)
	
	end
	
	
	def minus
			
			return calcStack.push(pop-pop)
	end
	
	
	def divide
			
			return calcStack.push(pop/pop)
	end

	
	def times
		
			return calcStack.push(pop * pop)
	end

	def value

		return calcStack[calcStack.length - 1]
	puts "Could not figure out Extra Credit!"
	end

end



















