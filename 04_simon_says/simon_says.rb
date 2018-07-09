def echo(name)

	name

end

def shout(a)

	a.upcase

end

def repeat(a, b)

	a = a + " "
	a = a * b
	a = a[0...-1]
	a

end

def start_of_word(word, b)

	word.slice(0...b)

end

def first_word(a)

	a.split[0]

end

def titleize(a)
  lowercase_words = %w{a an the and but or for nor of}
  a.split.each_with_index.map{|x, index| lowercase_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")
end