file = File.open "task.txt", "r"

#arr = file.to_a

total = 0

while line = file.gets
	total += line.split(",")[1].to_i
end

file.close

puts ""
puts "Total: #{total}"

puts 'Пример с урока !!!'

file = File.open "task.txt", "r"

total = 0

while line = file.gets
	arr = line.split ","
	value = arr[1].to_i
	value
end

puts "Total: #{value}"
