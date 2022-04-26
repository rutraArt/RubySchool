def show_book book
#	puts "Good guys!" if book['Mike'] do 
#		puts "Name #{book.each_key}, age: #{book.each_value}"
#	end
#	puts "Bad guys!" if book['Walt'] do 
#		puts "Name #{book.each_key}, age: #{book.each_value}"
#	end
#                             Moa XYiHA !
	puts "=======================================<br>"
	book.keys.each do |key|
		age = book[key]
		puts "<i>Name</i>: #{key}, <i>age</i>: <b>#{age}</b> <br>"
	end
	puts "=======================================<br>"
end

book1 = { 'Mike' => 65, 'Bil' => 40}

book2 = { 'Walt' => 50, 'Jessie' => 24}

puts "<body>"

book1.merge! book2
show_book book1