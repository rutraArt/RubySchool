def print_details details
	puts details[:name] if details[:name]
	puts details[:age] if details[:age]
	puts details[:adress] if details[:adress]
end

hh = {:name => 'Mike', :age => 55, :adress => '123 West Street'}

print_details hh 