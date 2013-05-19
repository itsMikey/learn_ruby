def add(a, b)
	c = a + b
end
	

def subtract(a, b)
	c = a - b
end


def sum(a)
	c=0
	a.each do |accum|
	c += accum
end
  return c

end


def multiply(a)
 c= 1
    a.each do |accum|
	 c *= accum
 end
  return c

end


def power(a, b)
	c=1
	
b.times do
	c *= a 
end
	return c
  
end


def factorial(x)
c =1
i = x-1

  if x==0
	 c = 0
  end
	
	if x == 1
	c = 1
	return 1
	end

x+=1   #Because I will be decrementing in my loop

   if x != 0 || x != 1

    i.times do
	if x != 0
	c*= (x-=1)
	puts c
    end
  end	

end
	return c 
end











