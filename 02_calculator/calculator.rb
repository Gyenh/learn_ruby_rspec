#write your code here
def add(a, b)

	a + b

end

def subtract(c, d)

	c - d

end

def sum(array=[])

	array.sum

end

def multiply(e, f)

	e * f

end

def power (a, b)

	a ** b

end

def factorial(a)

if a == 0									# si a est égal à 0
	1										# je retourne 1
else 										# sinon argument * (argument - 1)
	a * factorial(a - 1)

end
end