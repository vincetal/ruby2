# stair way 
# METHODE des lance le dés et retourne un nombre entre 1 et 6,
def des
	return rand(1..6)
end
# METHODE joue
# teste la valeur de chaque lancé de dés
# et fait +1 (pour 5 ou 6), -1 (pour 1) ou 0 (pour 2,3 ou 4)
# jusqu'à atteindre 10 et retourne le nombre de tirage réalisé
def joue
	position = 1
	n = 0
	while (position < 10)
		n += 1
		d = des
		if (d == 5 || d == 6)
			position += 1
			print "MONTE -"
			puts "tirage #{n}: valeur dés: #{des} position:#{position}"
		end
		if (d == 1)
			if (position > 1)
				position -= 1
			end
			print "DESCEND -"
			puts "tirage #{n}: valeur dés: #{des} position:#{position}"
		end
		if (d==2 || d==3 || d==4)
			print "RIEN -"
			puts "tirage #{n}: valeur dés: #{des} position:#{position}"
		end
	end
	return (n)
end

# METHODE essais fait 100 parties
# stocke dans un tableau les résultats des 100 parties successives
def essais (tab = [])
	for j in (0..100)
		p = joue
		puts "attein en #{p} tirages"
		tab[j] = p
	end
	return (tab)
end

tab = []
essais (tab)
puts "tableau de resultat des 100 parties."
puts tab.inspect
puts
# Calcul la moyenne des valeurs du tableau
average = tab.sum / tab.size.to_f
puts "En moyenne : #{average} essais"
