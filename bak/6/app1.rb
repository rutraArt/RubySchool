#encoding: cp866

print "Введите А: "
a = gets.strip.to_f

print "Введите B: "
b = gets.strip.to_f

print "Что будем делать? (+ - * /) "
vol = gets.strip

result = 0

if vol == "/" && b == 0 
	puts "На ноль делить нельзя!"
	exit
end

if vol == "+"
	result = a + b
end

if vol == "-"
	result = a - b
end

if vol == "*"
	result = a * b
end

if vol == "/"
	result = a / b
end

puts "Результат: #{result}"



