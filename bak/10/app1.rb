#encoding: cp866


def get_command
	actions = [:left, :right, :up, :down]
	
	x = rand(0..3)
	
	return actions[x]
end

command = get_command

puts "Полученна команда: #{command}"

if command == :left
	puts "Робот едет влево"
elsif command == :right
	puts "Робот едет вправо"
elsif command == :up
	puts "Робот едет вверх"
elsif command == :down
	puts "Робот едет вниз"
end