# write your code here
 
def who_is_bigger(a, b, c)
	names = ["a", "b", "c"]
	values = []

	values[0] = a
	values[1] = b
	values[2] = c

	if !(values.include?(nil))
		i = 0
		while i < values.length
			if values[i] == values.max
				return "#{names[i]} is bigger"
			end
			i += 1
		end
	end

	"nil detected"
end

def reverse_upcase_noLTA(x)


(x).reverse.upcase.gsub(/[LTA]/, '')
end

def array_42(value)

	value.include?(42)

end

def magic_array



end

