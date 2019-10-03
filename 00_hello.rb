# Deux Methode pour dire Bonjour

def ask_first_name
	puts "Dis moi quel est ton prénom ?"
	print " > "
	first_name = gets.chomp
	return first_name
end

def say_hello (first_name)
	puts "Bonjour, #{first_name} !"
	return
end

def perform
	say_hello(ask_first_name)
	return
end

perform
