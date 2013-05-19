def measure (i=1)
	totalTime = 0
 
  i.times do
    beginTime = Time.now
	
    yield
    endingTime = Time.now
    totalTime += endingTime - beginTime
  end
 
  totalTime / i
end





