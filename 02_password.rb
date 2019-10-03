# password
# signup saisie le passord et retourne une chaine de caractère
def signup(password)
	puts "Saisissez votre password :"
	print " > "
	password = gets.chomp.to_s
	return password
end

# login 
def login(password)
	login = false
		while (login == false)
			puts "Besoin de vérification du password svp :"
			print " > "
			test = gets.chomp
			if (test == password)
				login = true
			end
		end
	return login
end

def welcome_screen(login = false)
	if (login == true)
	puts "Welcome in your environment, some interresting news."
	end
	return
end

def perform
	password = signup(password)

	#ligne ajouté pour vérifier le contenu du password
	#puts "le password que vous avez saisi est : #{password}"

	a = false
	a = login(password)
	# ligne ajouté pour vérifier que le test de vérification du password renvoi bien : true
	# puts " la chaîne de caractère password est correcte.login est : #{a}"

	welcome_screen(a)
	return
end

perform
