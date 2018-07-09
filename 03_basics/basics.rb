# write your code here
 
def who_is_bigger(a, b, c)
	names = ["a", "b", "c"]									# Je met les arguments dans un array
	values = []												# Je crée un array vide

	values[0] = a 											#Je met dans le nouveau array vide
	values[1] = b 											#dans des emplacements 
	values[2] = c 											#prédéfinis

	if !(values.include?(nil)) 								# si le array values inclus nil, retourner faux
		i = 0 												# je définis i qui équivaut à un argument qui est égal à 0
		while i < values.length 							# tant que i inférieur à la longueur de array
			if values[i] == values.max 						# si array values[numéro emplacement] est égal à valeur maximum du array values
				return "#{names[i]} is bigger"				# retourner array names [numéro emplacement]
			end
			i += 1 											# j'incrémente de 1 pour passer à la suite.
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

def magic_array(chose)

  chose.flatten.uniq.delete_if{|e| e % 3 == 0}.map{|e| e*2}.sort

end
#########################################################################################################################################
# .flatten = chaque élément qui est un tableau, extraire ses éléments vers un nouveau tableau
# EXEMPLE 
# s = [ 1, 2, 3 ]           #=> [1, 2, 3]
# t = [ 4, 5, 6, [7, 8] ]   #=> [4, 5, 6, [7, 8]]
# a = [ s, t, 9, 10 ]       #=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
# a.flatten                 #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#########################################################################################################################################
# .uniq = retourne un nouveau array en supprimant les doublons 
# EXEMPLE 
# a = [ "a", "a", "b", "b", "c" ]
# a.uniq   # => ["a", "b", "c"]

# b = [["student","sam"], ["student","george"], ["teacher","matz"]]
# b.uniq { |s| s.first } # => [["student", "sam"], ["teacher", "matz"]]
#########################################################################################################################################
# .delete_if = supprime tous les éléments si le bloc retourne TRUE, le tableau est changé instantanément à chaque fois que le bloc est
# appelé
# EXEMPLE
# a = [ "a", "b", "c" ]
# a.delete_if {|x| x >= "b" }   #=> ["a"]
# 
#########################################################################################################################################
# % = méthode modulo
# .map prend un énumérable et le block puis cherche dans le blocks chaque élément et enfin retourne chaque valeur du blocks
# .map = Renvoie un nouveau tableau avec les résultats du bloc en cours d'exécution une fois pour chaque élément dans enumérable.
# EXEMPLE
# (1..4).collect {|i| i*i }   #=> [1, 4, 9, 16]
# (1..4).collect { "cat"  }   #=> ["cat", "cat", "cat", "cat"]
# 
# a = [ "d", "a", "e", "c", "b" ]
# a.sort                    #=> ["a", "b", "c", "d", "e"]