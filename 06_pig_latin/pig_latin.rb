def translate(string)

  vowels = [ "a" , "e" , "i" , "o" , "u"] 		#On crée un dossier 
  alphabet = ("a" .. "z").to_a
  consonants = alphabet - vowels

  string_split = string.split

  string_split.map! do |w|
    if vowels.include?(w[0])
      w + 'ay'
    elsif consonants.include?(w[0]) &&

        consonants.include?(w[1])


      w [2..-1] + w [0..1] +'ay'

    elsif w [0..1] == "qu"

      w[2..-1] + "quay"

    elsif w[0..2] == "thr"

      w [3..-1]+"thray"

    elsif w[0..2]== "sch"

      w[3..-1]+"schay"

    else consonants.include?(w[0])

      w[ 1..-1] + w[0..0] + 'ay'


    end
  end

  return string_split.join(" ")

end





# def translate str
# 	alpha = ('a'..'z').to_a
# 	vowels = %w[a e i o u]
# 	consonants = alpha - vowels

# 	if vowels.include?(str[0])
# 		str + 'ay'

# 	elsif consonants.include?(str[0]) && consonants.include?(str[1])
# 		str[2..-1] + str[0..1] + 'ay'
# 	elsif consonants.include?(str[0])
# 		str[1..-1] + str[0] + 'ay'
# 	else
# 		str
# 	end
# end
		
			

# def translate(input)
#     pig_string = ''
#     if input[0] =~ /[aeiou]/
#         return input + 'ay'
#     elsif input[0] =~ /[^aeiou]/ && input[1] =~ /[aeiou]/
#         return input[1..-1] + input[0] + 'ay'
#     elsif input[0..1] =~ /[^aeiou]/
#         return input[2..-1] + input[0..1] + 'ay'
#     else
#         return input[0] + input + 'ay'
#     end
# end

