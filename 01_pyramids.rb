# Pyramides étages impairs
def etage
	etage_pyramide = 0
	while etage_pyramide > 25 || etage_pyramide < 1 || etage_pyramide.even?
		puts "Une pyramide avec combien d'étages ?"
		print " > "
		etage_pyramide = gets.chomp.to_i
	end
	puts " avec #{etage_pyramide} étages"
	return etage_pyramide
end

def half_pyramide (etage_pyramide)
	pyramide = []
	m = 0
	(1..etage_pyramide).each do |n|
		espace = " "*(etage_pyramide-n)
		brique = "#"*(2*n-1)
		total = "#{espace}#{brique}"
		pyramide << total
	end
	# puts pyramide
	return pyramide
end

tab1 = []
tab2 = []

tab1 = half_pyramide(etage / 2 + 1)
puts tab1

tab2 = tab1
l = tab2.size
tab2.delete_at(l-1)

puts tab2.reverse
