
arr = %w[sasha artur teona daniel]

arr2 = arr[1..2]

arr2[1].capitalize!

puts arr2

x = 0
arr.each do |name|
	puts "#{x} - #{name}"
	x = x + 1 
end